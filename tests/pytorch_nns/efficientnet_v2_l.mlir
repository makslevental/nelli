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
    %cst = arith.constant dense<-0.015911e+00> : tensor<1000x1280xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1280xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<1280xf32>
    %cst_3 = arith.constant dense<0.003148e+00> : tensor<1280x640x1x1xf32>
    %cst_4 = arith.constant dense<-0.005047e+00> : tensor<640x3840x1x1xf32>
    %cst_5 = arith.constant dense<0.008276e+00> : tensor<3840x160x1x1xf32>
    %cst_6 = arith.constant dense<0.001953e+00> : tensor<160x3840x1x1xf32>
    %cst_7 = arith.constant dense<-0.002075e+00> : tensor<3840x1x3x3xf32>
    %cst_8 = arith.constant dense<0.010440e+00> : tensor<3840x640x1x1xf32>
    %cst_9 = arith.constant dense<0.002916e+00> : tensor<640x3840x1x1xf32>
    %cst_10 = arith.constant dense<-0.008248e+00> : tensor<3840x160x1x1xf32>
    %cst_11 = arith.constant dense<0.001310e+00> : tensor<160x3840x1x1xf32>
    %cst_12 = arith.constant dense<-0.014245e+00> : tensor<3840x1x3x3xf32>
    %cst_13 = arith.constant dense<0.005089e+00> : tensor<3840x640x1x1xf32>
    %cst_14 = arith.constant dense<-0.013018e+00> : tensor<640x3840x1x1xf32>
    %cst_15 = arith.constant dense<0.006203e+00> : tensor<3840x160x1x1xf32>
    %cst_16 = arith.constant dense<0.001839e+00> : tensor<160x3840x1x1xf32>
    %cst_17 = arith.constant dense<0.006296e+00> : tensor<3840x1x3x3xf32>
    %cst_18 = arith.constant dense<-0.008566e+00> : tensor<3840x640x1x1xf32>
    %cst_19 = arith.constant dense<-0.010594e+00> : tensor<640x3840x1x1xf32>
    %cst_20 = arith.constant dense<-0.007177e+00> : tensor<3840x160x1x1xf32>
    %cst_21 = arith.constant dense<-0.013576e+00> : tensor<160x3840x1x1xf32>
    %cst_22 = arith.constant dense<-0.004993e+00> : tensor<3840x1x3x3xf32>
    %cst_23 = arith.constant dense<0.018777e+00> : tensor<3840x640x1x1xf32>
    %cst_24 = arith.constant dense<-0.012871e+00> : tensor<640x3840x1x1xf32>
    %cst_25 = arith.constant dense<-0.002350e+00> : tensor<3840x160x1x1xf32>
    %cst_26 = arith.constant dense<-0.009398e+00> : tensor<160x3840x1x1xf32>
    %cst_27 = arith.constant dense<0.005425e+00> : tensor<3840x1x3x3xf32>
    %cst_28 = arith.constant dense<0.006892e+00> : tensor<3840x640x1x1xf32>
    %cst_29 = arith.constant dense<0.008794e+00> : tensor<640x3840x1x1xf32>
    %cst_30 = arith.constant dense<0.000574e+00> : tensor<3840x160x1x1xf32>
    %cst_31 = arith.constant dense<0.007880e+00> : tensor<160x3840x1x1xf32>
    %cst_32 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_33 = arith.constant dense<0.007343e+00> : tensor<3840x1x3x3xf32>
    %cst_34 = arith.constant dense<0.000000e+00> : tensor<3840xf32>
    %cst_35 = arith.constant dense<1.000000e+00> : tensor<3840xf32>
    %cst_36 = arith.constant dense<0.004072e+00> : tensor<3840x640x1x1xf32>
    %cst_37 = arith.constant dense<0.000000e+00> : tensor<640xf32>
    %cst_38 = arith.constant dense<1.000000e+00> : tensor<640xf32>
    %cst_39 = arith.constant dense<-0.000403e+00> : tensor<640x2304x1x1xf32>
    %cst_40 = arith.constant dense<-0.015279e+00> : tensor<2304x96x1x1xf32>
    %cst_41 = arith.constant dense<0.012533e+00> : tensor<96x2304x1x1xf32>
    %cst_42 = arith.constant dense<-0.009109e+00> : tensor<2304x1x3x3xf32>
    %cst_43 = arith.constant dense<0.001108e+00> : tensor<2304x384x1x1xf32>
    %cst_44 = arith.constant dense<0.018632e+00> : tensor<384x2304x1x1xf32>
    %cst_45 = arith.constant dense<0.004159e+00> : tensor<2304x96x1x1xf32>
    %cst_46 = arith.constant dense<-0.004079e+00> : tensor<96x2304x1x1xf32>
    %cst_47 = arith.constant dense<0.006642e+00> : tensor<2304x1x3x3xf32>
    %cst_48 = arith.constant dense<-0.000921e+00> : tensor<2304x384x1x1xf32>
    %cst_49 = arith.constant dense<-0.013670e+00> : tensor<384x2304x1x1xf32>
    %cst_50 = arith.constant dense<-0.008906e+00> : tensor<2304x96x1x1xf32>
    %cst_51 = arith.constant dense<0.007187e+00> : tensor<96x2304x1x1xf32>
    %cst_52 = arith.constant dense<-0.010487e+00> : tensor<2304x1x3x3xf32>
    %cst_53 = arith.constant dense<-0.002136e+00> : tensor<2304x384x1x1xf32>
    %cst_54 = arith.constant dense<0.000317e+00> : tensor<384x2304x1x1xf32>
    %cst_55 = arith.constant dense<-0.006738e+00> : tensor<2304x96x1x1xf32>
    %cst_56 = arith.constant dense<0.005319e+00> : tensor<96x2304x1x1xf32>
    %cst_57 = arith.constant dense<0.001114e+00> : tensor<2304x1x3x3xf32>
    %cst_58 = arith.constant dense<-0.003977e+00> : tensor<2304x384x1x1xf32>
    %cst_59 = arith.constant dense<0.003690e+00> : tensor<384x2304x1x1xf32>
    %cst_60 = arith.constant dense<-0.005542e+00> : tensor<2304x96x1x1xf32>
    %cst_61 = arith.constant dense<0.008692e+00> : tensor<96x2304x1x1xf32>
    %cst_62 = arith.constant dense<0.002330e+00> : tensor<2304x1x3x3xf32>
    %cst_63 = arith.constant dense<0.011474e+00> : tensor<2304x384x1x1xf32>
    %cst_64 = arith.constant dense<-0.011347e+00> : tensor<384x2304x1x1xf32>
    %cst_65 = arith.constant dense<0.002687e+00> : tensor<2304x96x1x1xf32>
    %cst_66 = arith.constant dense<0.003653e+00> : tensor<96x2304x1x1xf32>
    %cst_67 = arith.constant dense<0.011598e+00> : tensor<2304x1x3x3xf32>
    %cst_68 = arith.constant dense<0.016677e+00> : tensor<2304x384x1x1xf32>
    %cst_69 = arith.constant dense<-0.011421e+00> : tensor<384x2304x1x1xf32>
    %cst_70 = arith.constant dense<-0.015882e+00> : tensor<2304x96x1x1xf32>
    %cst_71 = arith.constant dense<0.014244e+00> : tensor<96x2304x1x1xf32>
    %cst_72 = arith.constant dense<0.013185e+00> : tensor<2304x1x3x3xf32>
    %cst_73 = arith.constant dense<0.006926e+00> : tensor<2304x384x1x1xf32>
    %cst_74 = arith.constant dense<0.006906e+00> : tensor<384x2304x1x1xf32>
    %cst_75 = arith.constant dense<0.000395e+00> : tensor<2304x96x1x1xf32>
    %cst_76 = arith.constant dense<-0.003833e+00> : tensor<96x2304x1x1xf32>
    %cst_77 = arith.constant dense<0.012983e+00> : tensor<2304x1x3x3xf32>
    %cst_78 = arith.constant dense<-0.010005e+00> : tensor<2304x384x1x1xf32>
    %cst_79 = arith.constant dense<0.001257e+00> : tensor<384x2304x1x1xf32>
    %cst_80 = arith.constant dense<0.009571e+00> : tensor<2304x96x1x1xf32>
    %cst_81 = arith.constant dense<0.003815e+00> : tensor<96x2304x1x1xf32>
    %cst_82 = arith.constant dense<-0.009860e+00> : tensor<2304x1x3x3xf32>
    %cst_83 = arith.constant dense<0.003202e+00> : tensor<2304x384x1x1xf32>
    %cst_84 = arith.constant dense<-0.000083e+00> : tensor<384x2304x1x1xf32>
    %cst_85 = arith.constant dense<0.004464e+00> : tensor<2304x96x1x1xf32>
    %cst_86 = arith.constant dense<0.014473e+00> : tensor<96x2304x1x1xf32>
    %cst_87 = arith.constant dense<0.006333e+00> : tensor<2304x1x3x3xf32>
    %cst_88 = arith.constant dense<-0.018240e+00> : tensor<2304x384x1x1xf32>
    %cst_89 = arith.constant dense<-0.000829e+00> : tensor<384x2304x1x1xf32>
    %cst_90 = arith.constant dense<-0.013125e+00> : tensor<2304x96x1x1xf32>
    %cst_91 = arith.constant dense<-0.008576e+00> : tensor<96x2304x1x1xf32>
    %cst_92 = arith.constant dense<-0.003764e+00> : tensor<2304x1x3x3xf32>
    %cst_93 = arith.constant dense<0.001687e+00> : tensor<2304x384x1x1xf32>
    %cst_94 = arith.constant dense<-0.001080e+00> : tensor<384x2304x1x1xf32>
    %cst_95 = arith.constant dense<0.003401e+00> : tensor<2304x96x1x1xf32>
    %cst_96 = arith.constant dense<0.011405e+00> : tensor<96x2304x1x1xf32>
    %cst_97 = arith.constant dense<-0.001230e+00> : tensor<2304x1x3x3xf32>
    %cst_98 = arith.constant dense<0.015523e+00> : tensor<2304x384x1x1xf32>
    %cst_99 = arith.constant dense<0.012931e+00> : tensor<384x2304x1x1xf32>
    %cst_100 = arith.constant dense<-0.017542e+00> : tensor<2304x96x1x1xf32>
    %cst_101 = arith.constant dense<-0.005784e+00> : tensor<96x2304x1x1xf32>
    %cst_102 = arith.constant dense<-0.006904e+00> : tensor<2304x1x3x3xf32>
    %cst_103 = arith.constant dense<0.006955e+00> : tensor<2304x384x1x1xf32>
    %cst_104 = arith.constant dense<0.002883e+00> : tensor<384x2304x1x1xf32>
    %cst_105 = arith.constant dense<0.002068e+00> : tensor<2304x96x1x1xf32>
    %cst_106 = arith.constant dense<-0.001076e+00> : tensor<96x2304x1x1xf32>
    %cst_107 = arith.constant dense<-0.002607e+00> : tensor<2304x1x3x3xf32>
    %cst_108 = arith.constant dense<-0.001855e+00> : tensor<2304x384x1x1xf32>
    %cst_109 = arith.constant dense<0.001493e+00> : tensor<384x2304x1x1xf32>
    %cst_110 = arith.constant dense<0.000010e+00> : tensor<2304x96x1x1xf32>
    %cst_111 = arith.constant dense<0.007502e+00> : tensor<96x2304x1x1xf32>
    %cst_112 = arith.constant dense<0.017489e+00> : tensor<2304x1x3x3xf32>
    %cst_113 = arith.constant dense<-0.015727e+00> : tensor<2304x384x1x1xf32>
    %cst_114 = arith.constant dense<0.014362e+00> : tensor<384x2304x1x1xf32>
    %cst_115 = arith.constant dense<-0.003060e+00> : tensor<2304x96x1x1xf32>
    %cst_116 = arith.constant dense<0.015881e+00> : tensor<96x2304x1x1xf32>
    %cst_117 = arith.constant dense<-0.004266e+00> : tensor<2304x1x3x3xf32>
    %cst_118 = arith.constant dense<-0.005232e+00> : tensor<2304x384x1x1xf32>
    %cst_119 = arith.constant dense<-0.011518e+00> : tensor<384x2304x1x1xf32>
    %cst_120 = arith.constant dense<0.003803e+00> : tensor<2304x96x1x1xf32>
    %cst_121 = arith.constant dense<0.006196e+00> : tensor<96x2304x1x1xf32>
    %cst_122 = arith.constant dense<0.003495e+00> : tensor<2304x1x3x3xf32>
    %cst_123 = arith.constant dense<-0.004717e+00> : tensor<2304x384x1x1xf32>
    %cst_124 = arith.constant dense<0.028196e+00> : tensor<384x2304x1x1xf32>
    %cst_125 = arith.constant dense<0.000418e+00> : tensor<2304x96x1x1xf32>
    %cst_126 = arith.constant dense<0.006302e+00> : tensor<96x2304x1x1xf32>
    %cst_127 = arith.constant dense<0.010481e+00> : tensor<2304x1x3x3xf32>
    %cst_128 = arith.constant dense<-0.009596e+00> : tensor<2304x384x1x1xf32>
    %cst_129 = arith.constant dense<0.007566e+00> : tensor<384x2304x1x1xf32>
    %cst_130 = arith.constant dense<0.005078e+00> : tensor<2304x96x1x1xf32>
    %cst_131 = arith.constant dense<0.018549e+00> : tensor<96x2304x1x1xf32>
    %cst_132 = arith.constant dense<0.004478e+00> : tensor<2304x1x3x3xf32>
    %cst_133 = arith.constant dense<-0.007667e+00> : tensor<2304x384x1x1xf32>
    %cst_134 = arith.constant dense<0.007815e+00> : tensor<384x2304x1x1xf32>
    %cst_135 = arith.constant dense<0.004624e+00> : tensor<2304x96x1x1xf32>
    %cst_136 = arith.constant dense<-0.013159e+00> : tensor<96x2304x1x1xf32>
    %cst_137 = arith.constant dense<0.004957e+00> : tensor<2304x1x3x3xf32>
    %cst_138 = arith.constant dense<-0.017907e+00> : tensor<2304x384x1x1xf32>
    %cst_139 = arith.constant dense<0.009582e+00> : tensor<384x2304x1x1xf32>
    %cst_140 = arith.constant dense<0.015427e+00> : tensor<2304x96x1x1xf32>
    %cst_141 = arith.constant dense<-0.009183e+00> : tensor<96x2304x1x1xf32>
    %cst_142 = arith.constant dense<0.006374e+00> : tensor<2304x1x3x3xf32>
    %cst_143 = arith.constant dense<-0.009923e+00> : tensor<2304x384x1x1xf32>
    %cst_144 = arith.constant dense<0.004602e+00> : tensor<384x2304x1x1xf32>
    %cst_145 = arith.constant dense<0.017725e+00> : tensor<2304x96x1x1xf32>
    %cst_146 = arith.constant dense<0.003011e+00> : tensor<96x2304x1x1xf32>
    %cst_147 = arith.constant dense<-0.004396e+00> : tensor<2304x1x3x3xf32>
    %cst_148 = arith.constant dense<0.000948e+00> : tensor<2304x384x1x1xf32>
    %cst_149 = arith.constant dense<0.024738e+00> : tensor<384x2304x1x1xf32>
    %cst_150 = arith.constant dense<0.003329e+00> : tensor<2304x96x1x1xf32>
    %cst_151 = arith.constant dense<-0.005193e+00> : tensor<96x2304x1x1xf32>
    %cst_152 = arith.constant dense<0.005030e+00> : tensor<2304x1x3x3xf32>
    %cst_153 = arith.constant dense<-0.002464e+00> : tensor<2304x384x1x1xf32>
    %cst_154 = arith.constant dense<0.011521e+00> : tensor<384x2304x1x1xf32>
    %cst_155 = arith.constant dense<-0.003686e+00> : tensor<2304x96x1x1xf32>
    %cst_156 = arith.constant dense<0.015972e+00> : tensor<96x2304x1x1xf32>
    %cst_157 = arith.constant dense<-0.013489e+00> : tensor<2304x1x3x3xf32>
    %cst_158 = arith.constant dense<-0.009579e+00> : tensor<2304x384x1x1xf32>
    %cst_159 = arith.constant dense<-0.000634e+00> : tensor<384x2304x1x1xf32>
    %cst_160 = arith.constant dense<-0.011783e+00> : tensor<2304x96x1x1xf32>
    %cst_161 = arith.constant dense<-0.007115e+00> : tensor<96x2304x1x1xf32>
    %cst_162 = arith.constant dense<0.010939e+00> : tensor<2304x1x3x3xf32>
    %cst_163 = arith.constant dense<0.000000e+00> : tensor<2304xf32>
    %cst_164 = arith.constant dense<1.000000e+00> : tensor<2304xf32>
    %cst_165 = arith.constant dense<-0.003519e+00> : tensor<2304x384x1x1xf32>
    %cst_166 = arith.constant dense<-0.006405e+00> : tensor<384x1344x1x1xf32>
    %cst_167 = arith.constant dense<0.019177e+00> : tensor<1344x56x1x1xf32>
    %cst_168 = arith.constant dense<-0.014519e+00> : tensor<56x1344x1x1xf32>
    %cst_169 = arith.constant dense<-0.003597e+00> : tensor<1344x1x3x3xf32>
    %cst_170 = arith.constant dense<0.001751e+00> : tensor<1344x224x1x1xf32>
    %cst_171 = arith.constant dense<-0.007672e+00> : tensor<224x1344x1x1xf32>
    %cst_172 = arith.constant dense<0.006771e+00> : tensor<1344x56x1x1xf32>
    %cst_173 = arith.constant dense<0.013881e+00> : tensor<56x1344x1x1xf32>
    %cst_174 = arith.constant dense<-0.004069e+00> : tensor<1344x1x3x3xf32>
    %cst_175 = arith.constant dense<0.006765e+00> : tensor<1344x224x1x1xf32>
    %cst_176 = arith.constant dense<0.012880e+00> : tensor<224x1344x1x1xf32>
    %cst_177 = arith.constant dense<-0.009149e+00> : tensor<1344x56x1x1xf32>
    %cst_178 = arith.constant dense<0.005643e+00> : tensor<56x1344x1x1xf32>
    %cst_179 = arith.constant dense<0.016699e+00> : tensor<1344x1x3x3xf32>
    %cst_180 = arith.constant dense<-0.003265e+00> : tensor<1344x224x1x1xf32>
    %cst_181 = arith.constant dense<0.017016e+00> : tensor<224x1344x1x1xf32>
    %cst_182 = arith.constant dense<0.003933e+00> : tensor<1344x56x1x1xf32>
    %cst_183 = arith.constant dense<0.023164e+00> : tensor<56x1344x1x1xf32>
    %cst_184 = arith.constant dense<0.000047e+00> : tensor<1344x1x3x3xf32>
    %cst_185 = arith.constant dense<-0.001245e+00> : tensor<1344x224x1x1xf32>
    %cst_186 = arith.constant dense<0.011444e+00> : tensor<224x1344x1x1xf32>
    %cst_187 = arith.constant dense<-0.009816e+00> : tensor<1344x56x1x1xf32>
    %cst_188 = arith.constant dense<0.010029e+00> : tensor<56x1344x1x1xf32>
    %cst_189 = arith.constant dense<0.012471e+00> : tensor<1344x1x3x3xf32>
    %cst_190 = arith.constant dense<-0.003213e+00> : tensor<1344x224x1x1xf32>
    %cst_191 = arith.constant dense<-0.000422e+00> : tensor<224x1344x1x1xf32>
    %cst_192 = arith.constant dense<0.005980e+00> : tensor<1344x56x1x1xf32>
    %cst_193 = arith.constant dense<0.001864e+00> : tensor<56x1344x1x1xf32>
    %cst_194 = arith.constant dense<-0.003313e+00> : tensor<1344x1x3x3xf32>
    %cst_195 = arith.constant dense<0.005357e+00> : tensor<1344x224x1x1xf32>
    %cst_196 = arith.constant dense<-0.004524e+00> : tensor<224x1344x1x1xf32>
    %cst_197 = arith.constant dense<-0.005548e+00> : tensor<1344x56x1x1xf32>
    %cst_198 = arith.constant dense<-0.008936e+00> : tensor<56x1344x1x1xf32>
    %cst_199 = arith.constant dense<0.013720e+00> : tensor<1344x1x3x3xf32>
    %cst_200 = arith.constant dense<0.011936e+00> : tensor<1344x224x1x1xf32>
    %cst_201 = arith.constant dense<-0.017690e+00> : tensor<224x1344x1x1xf32>
    %cst_202 = arith.constant dense<0.005562e+00> : tensor<1344x56x1x1xf32>
    %cst_203 = arith.constant dense<0.000078e+00> : tensor<56x1344x1x1xf32>
    %cst_204 = arith.constant dense<-0.000591e+00> : tensor<1344x1x3x3xf32>
    %cst_205 = arith.constant dense<0.000075e+00> : tensor<1344x224x1x1xf32>
    %cst_206 = arith.constant dense<0.004479e+00> : tensor<224x1344x1x1xf32>
    %cst_207 = arith.constant dense<-0.003566e+00> : tensor<1344x56x1x1xf32>
    %cst_208 = arith.constant dense<-0.001212e+00> : tensor<56x1344x1x1xf32>
    %cst_209 = arith.constant dense<-0.000197e+00> : tensor<1344x1x3x3xf32>
    %cst_210 = arith.constant dense<-0.004331e+00> : tensor<1344x224x1x1xf32>
    %cst_211 = arith.constant dense<0.004035e+00> : tensor<224x1344x1x1xf32>
    %cst_212 = arith.constant dense<-0.005629e+00> : tensor<1344x56x1x1xf32>
    %cst_213 = arith.constant dense<-0.007363e+00> : tensor<56x1344x1x1xf32>
    %cst_214 = arith.constant dense<0.007772e+00> : tensor<1344x1x3x3xf32>
    %cst_215 = arith.constant dense<0.003777e+00> : tensor<1344x224x1x1xf32>
    %cst_216 = arith.constant dense<-0.013804e+00> : tensor<224x1344x1x1xf32>
    %cst_217 = arith.constant dense<-0.017313e+00> : tensor<1344x56x1x1xf32>
    %cst_218 = arith.constant dense<-0.004299e+00> : tensor<56x1344x1x1xf32>
    %cst_219 = arith.constant dense<-0.004661e+00> : tensor<1344x1x3x3xf32>
    %cst_220 = arith.constant dense<0.007323e+00> : tensor<1344x224x1x1xf32>
    %cst_221 = arith.constant dense<-0.002868e+00> : tensor<224x1344x1x1xf32>
    %cst_222 = arith.constant dense<-0.011786e+00> : tensor<1344x56x1x1xf32>
    %cst_223 = arith.constant dense<0.008404e+00> : tensor<56x1344x1x1xf32>
    %cst_224 = arith.constant dense<-0.005955e+00> : tensor<1344x1x3x3xf32>
    %cst_225 = arith.constant dense<0.002456e+00> : tensor<1344x224x1x1xf32>
    %cst_226 = arith.constant dense<0.000388e+00> : tensor<224x1344x1x1xf32>
    %cst_227 = arith.constant dense<0.000508e+00> : tensor<1344x56x1x1xf32>
    %cst_228 = arith.constant dense<-0.013323e+00> : tensor<56x1344x1x1xf32>
    %cst_229 = arith.constant dense<0.027269e+00> : tensor<1344x1x3x3xf32>
    %cst_230 = arith.constant dense<-0.001792e+00> : tensor<1344x224x1x1xf32>
    %cst_231 = arith.constant dense<0.006648e+00> : tensor<224x1344x1x1xf32>
    %cst_232 = arith.constant dense<0.000158e+00> : tensor<1344x56x1x1xf32>
    %cst_233 = arith.constant dense<0.015388e+00> : tensor<56x1344x1x1xf32>
    %cst_234 = arith.constant dense<-0.006012e+00> : tensor<1344x1x3x3xf32>
    %cst_235 = arith.constant dense<-0.011679e+00> : tensor<1344x224x1x1xf32>
    %cst_236 = arith.constant dense<0.018580e+00> : tensor<224x1344x1x1xf32>
    %cst_237 = arith.constant dense<0.014525e+00> : tensor<1344x56x1x1xf32>
    %cst_238 = arith.constant dense<0.008456e+00> : tensor<56x1344x1x1xf32>
    %cst_239 = arith.constant dense<-0.005870e+00> : tensor<1344x1x3x3xf32>
    %cst_240 = arith.constant dense<0.005864e+00> : tensor<1344x224x1x1xf32>
    %cst_241 = arith.constant dense<-0.010891e+00> : tensor<224x1344x1x1xf32>
    %cst_242 = arith.constant dense<0.012902e+00> : tensor<1344x56x1x1xf32>
    %cst_243 = arith.constant dense<0.018316e+00> : tensor<56x1344x1x1xf32>
    %cst_244 = arith.constant dense<-0.004279e+00> : tensor<1344x1x3x3xf32>
    %cst_245 = arith.constant dense<-0.020742e+00> : tensor<1344x224x1x1xf32>
    %cst_246 = arith.constant dense<-0.002197e+00> : tensor<224x1344x1x1xf32>
    %cst_247 = arith.constant dense<0.001767e+00> : tensor<1344x56x1x1xf32>
    %cst_248 = arith.constant dense<0.003031e+00> : tensor<56x1344x1x1xf32>
    %cst_249 = arith.constant dense<-0.011351e+00> : tensor<1344x1x3x3xf32>
    %cst_250 = arith.constant dense<-0.001605e+00> : tensor<1344x224x1x1xf32>
    %cst_251 = arith.constant dense<-0.007698e+00> : tensor<224x1344x1x1xf32>
    %cst_252 = arith.constant dense<-0.014957e+00> : tensor<1344x56x1x1xf32>
    %cst_253 = arith.constant dense<0.015438e+00> : tensor<56x1344x1x1xf32>
    %cst_254 = arith.constant dense<0.006161e+00> : tensor<1344x1x3x3xf32>
    %cst_255 = arith.constant dense<0.005610e+00> : tensor<1344x224x1x1xf32>
    %cst_256 = arith.constant dense<-0.015816e+00> : tensor<224x1344x1x1xf32>
    %cst_257 = arith.constant dense<-0.010591e+00> : tensor<1344x56x1x1xf32>
    %cst_258 = arith.constant dense<-0.003489e+00> : tensor<56x1344x1x1xf32>
    %cst_259 = arith.constant dense<0.000000e+00> : tensor<56xf32>
    %cst_260 = arith.constant dense<-0.003194e+00> : tensor<1344x1x3x3xf32>
    %cst_261 = arith.constant dense<0.000000e+00> : tensor<1344xf32>
    %cst_262 = arith.constant dense<1.000000e+00> : tensor<1344xf32>
    %cst_263 = arith.constant dense<-0.000924e+00> : tensor<1344x224x1x1xf32>
    %cst_264 = arith.constant dense<0.000000e+00> : tensor<224xf32>
    %cst_265 = arith.constant dense<1.000000e+00> : tensor<224xf32>
    %cst_266 = arith.constant dense<-0.004924e+00> : tensor<224x1152x1x1xf32>
    %cst_267 = arith.constant dense<0.000042e+00> : tensor<1152x48x1x1xf32>
    %cst_268 = arith.constant dense<-0.005094e+00> : tensor<48x1152x1x1xf32>
    %cst_269 = arith.constant dense<-0.016219e+00> : tensor<1152x1x3x3xf32>
    %cst_270 = arith.constant dense<0.000000e+00> : tensor<1152xf32>
    %cst_271 = arith.constant dense<1.000000e+00> : tensor<1152xf32>
    %cst_272 = arith.constant dense<0.000893e+00> : tensor<1152x192x1x1xf32>
    %cst_273 = arith.constant dense<0.008559e+00> : tensor<192x768x1x1xf32>
    %cst_274 = arith.constant dense<-0.001986e+00> : tensor<768x48x1x1xf32>
    %cst_275 = arith.constant dense<-0.006081e+00> : tensor<48x768x1x1xf32>
    %cst_276 = arith.constant dense<-0.006203e+00> : tensor<768x1x3x3xf32>
    %cst_277 = arith.constant dense<-0.003998e+00> : tensor<768x192x1x1xf32>
    %cst_278 = arith.constant dense<0.016012e+00> : tensor<192x768x1x1xf32>
    %cst_279 = arith.constant dense<0.010483e+00> : tensor<768x48x1x1xf32>
    %cst_280 = arith.constant dense<-0.004700e+00> : tensor<48x768x1x1xf32>
    %cst_281 = arith.constant dense<-0.014295e+00> : tensor<768x1x3x3xf32>
    %cst_282 = arith.constant dense<0.006520e+00> : tensor<768x192x1x1xf32>
    %cst_283 = arith.constant dense<-0.001423e+00> : tensor<192x768x1x1xf32>
    %cst_284 = arith.constant dense<-0.024217e+00> : tensor<768x48x1x1xf32>
    %cst_285 = arith.constant dense<-0.006129e+00> : tensor<48x768x1x1xf32>
    %cst_286 = arith.constant dense<-0.000682e+00> : tensor<768x1x3x3xf32>
    %cst_287 = arith.constant dense<-0.010545e+00> : tensor<768x192x1x1xf32>
    %cst_288 = arith.constant dense<0.013889e+00> : tensor<192x768x1x1xf32>
    %cst_289 = arith.constant dense<0.005532e+00> : tensor<768x48x1x1xf32>
    %cst_290 = arith.constant dense<-0.006022e+00> : tensor<48x768x1x1xf32>
    %cst_291 = arith.constant dense<-0.010438e+00> : tensor<768x1x3x3xf32>
    %cst_292 = arith.constant dense<-0.009557e+00> : tensor<768x192x1x1xf32>
    %cst_293 = arith.constant dense<0.002098e+00> : tensor<192x768x1x1xf32>
    %cst_294 = arith.constant dense<-0.002821e+00> : tensor<768x48x1x1xf32>
    %cst_295 = arith.constant dense<-0.000098e+00> : tensor<48x768x1x1xf32>
    %cst_296 = arith.constant dense<0.004625e+00> : tensor<768x1x3x3xf32>
    %cst_297 = arith.constant dense<-0.010473e+00> : tensor<768x192x1x1xf32>
    %cst_298 = arith.constant dense<0.000397e+00> : tensor<192x768x1x1xf32>
    %cst_299 = arith.constant dense<0.004768e+00> : tensor<768x48x1x1xf32>
    %cst_300 = arith.constant dense<0.002682e+00> : tensor<48x768x1x1xf32>
    %cst_301 = arith.constant dense<-0.010173e+00> : tensor<768x1x3x3xf32>
    %cst_302 = arith.constant dense<-0.003419e+00> : tensor<768x192x1x1xf32>
    %cst_303 = arith.constant dense<-0.001518e+00> : tensor<192x768x1x1xf32>
    %cst_304 = arith.constant dense<-0.000745e+00> : tensor<768x48x1x1xf32>
    %cst_305 = arith.constant dense<-0.006894e+00> : tensor<48x768x1x1xf32>
    %cst_306 = arith.constant dense<0.000838e+00> : tensor<768x1x3x3xf32>
    %cst_307 = arith.constant dense<0.005953e+00> : tensor<768x192x1x1xf32>
    %cst_308 = arith.constant dense<0.003694e+00> : tensor<192x768x1x1xf32>
    %cst_309 = arith.constant dense<-0.004966e+00> : tensor<768x48x1x1xf32>
    %cst_310 = arith.constant dense<-0.002955e+00> : tensor<48x768x1x1xf32>
    %cst_311 = arith.constant dense<0.004659e+00> : tensor<768x1x3x3xf32>
    %cst_312 = arith.constant dense<-0.002067e+00> : tensor<768x192x1x1xf32>
    %cst_313 = arith.constant dense<0.004865e+00> : tensor<192x768x1x1xf32>
    %cst_314 = arith.constant dense<-0.010972e+00> : tensor<768x48x1x1xf32>
    %cst_315 = arith.constant dense<0.011431e+00> : tensor<48x768x1x1xf32>
    %cst_316 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_317 = arith.constant dense<0.011304e+00> : tensor<768x1x3x3xf32>
    %cst_318 = arith.constant dense<0.000000e+00> : tensor<768xf32>
    %cst_319 = arith.constant dense<1.000000e+00> : tensor<768xf32>
    %cst_320 = arith.constant dense<0.007113e+00> : tensor<768x192x1x1xf32>
    %cst_321 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_322 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_323 = arith.constant dense<0.002977e+00> : tensor<192x384x1x1xf32>
    %cst_324 = arith.constant dense<0.008649e+00> : tensor<384x24x1x1xf32>
    %cst_325 = arith.constant dense<-0.005406e+00> : tensor<24x384x1x1xf32>
    %cst_326 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_327 = arith.constant dense<0.007271e+00> : tensor<384x1x3x3xf32>
    %cst_328 = arith.constant dense<0.008201e+00> : tensor<384x96x1x1xf32>
    %cst_329 = arith.constant dense<-0.011910e+00> : tensor<96x384x1x1xf32>
    %cst_330 = arith.constant dense<0.014042e+00> : tensor<384x96x3x3xf32>
    %cst_331 = arith.constant dense<0.004027e+00> : tensor<96x384x1x1xf32>
    %cst_332 = arith.constant dense<0.003027e+00> : tensor<384x96x3x3xf32>
    %cst_333 = arith.constant dense<0.019777e+00> : tensor<96x384x1x1xf32>
    %cst_334 = arith.constant dense<-0.008305e+00> : tensor<384x96x3x3xf32>
    %cst_335 = arith.constant dense<0.001187e+00> : tensor<96x384x1x1xf32>
    %cst_336 = arith.constant dense<0.000709e+00> : tensor<384x96x3x3xf32>
    %cst_337 = arith.constant dense<0.014178e+00> : tensor<96x384x1x1xf32>
    %cst_338 = arith.constant dense<0.008950e+00> : tensor<384x96x3x3xf32>
    %cst_339 = arith.constant dense<-0.005134e+00> : tensor<96x384x1x1xf32>
    %cst_340 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_341 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_342 = arith.constant dense<0.002881e+00> : tensor<384x96x3x3xf32>
    %cst_343 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_344 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_345 = arith.constant dense<-0.004160e+00> : tensor<96x256x1x1xf32>
    %cst_346 = arith.constant dense<-0.011223e+00> : tensor<256x64x3x3xf32>
    %cst_347 = arith.constant dense<0.000802e+00> : tensor<64x256x1x1xf32>
    %cst_348 = arith.constant dense<-0.013746e+00> : tensor<256x64x3x3xf32>
    %cst_349 = arith.constant dense<0.007647e+00> : tensor<64x256x1x1xf32>
    %cst_350 = arith.constant dense<0.001467e+00> : tensor<256x64x3x3xf32>
    %cst_351 = arith.constant dense<-0.007420e+00> : tensor<64x256x1x1xf32>
    %cst_352 = arith.constant dense<-0.011487e+00> : tensor<256x64x3x3xf32>
    %cst_353 = arith.constant dense<-0.001726e+00> : tensor<64x256x1x1xf32>
    %cst_354 = arith.constant dense<0.006443e+00> : tensor<256x64x3x3xf32>
    %cst_355 = arith.constant dense<0.020785e+00> : tensor<64x256x1x1xf32>
    %cst_356 = arith.constant dense<-0.018471e+00> : tensor<256x64x3x3xf32>
    %cst_357 = arith.constant dense<0.001729e+00> : tensor<64x256x1x1xf32>
    %cst_358 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_359 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_360 = arith.constant dense<0.008772e+00> : tensor<256x64x3x3xf32>
    %cst_361 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_362 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_363 = arith.constant dense<-0.014330e+00> : tensor<64x128x1x1xf32>
    %cst_364 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_365 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_366 = arith.constant dense<0.001705e+00> : tensor<128x32x3x3xf32>
    %cst_367 = arith.constant dense<0.015113e+00> : tensor<32x32x3x3xf32>
    %cst_368 = arith.constant dense<0.007555e+00> : tensor<32x32x3x3xf32>
    %cst_369 = arith.constant dense<-0.005002e+00> : tensor<32x32x3x3xf32>
    %cst_370 = arith.constant dense<0.011387e+00> : tensor<32x32x3x3xf32>
    %cst_371 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_372 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_373 = arith.constant dense<0.004057e+00> : tensor<32x3x3x3xf32>
    %cst_374 = arith.constant 0.000000e+00 : f32
    %cst_375 = arith.constant 1.000000e-03 : f64
    %cst_376 = arith.constant 4.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_377 = arith.constant 1.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x32x16x16xf32>
    %1 = linalg.fill ins(%cst_374 : f32) outs(%0 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_373 : tensor<1x3x34x34xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_372, %cst_371, %cst_371, %cst_372 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%2 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x32x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x32x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_378 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %7 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_378, %cst_370 : tensor<1x32x18x18xf32>, tensor<32x32x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_372, %cst_371, %cst_371, %cst_372 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%7 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x32x16x16xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x32x16x16xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x32x16x16xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %6 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_379 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_379, %cst_369 : tensor<1x32x18x18xf32>, tensor<32x32x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %13 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_372, %cst_371, %cst_371, %cst_372 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%12 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x32x16x16xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x32x16x16xf32>
    %15 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %13 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x32x16x16xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %11 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_380 = tensor.pad %16 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %17 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_380, %cst_368 : tensor<1x32x18x18xf32>, tensor<32x32x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %18 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %cst_372, %cst_371, %cst_371, %cst_372 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%17 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x32x16x16xf32>
    %19 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x32x16x16xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %18 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x32x16x16xf32>
    %21 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %16 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_381 = tensor.pad %21 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_381, %cst_367 : tensor<1x32x18x18xf32>, tensor<32x32x3x3xf32>) outs(%1 : tensor<1x32x16x16xf32>) -> tensor<1x32x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %23 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %cst_372, %cst_371, %cst_371, %cst_372 : tensor<1x32x16x16xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%22 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x32x16x16xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x32x16x16xf32>
    %25 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24, %23 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x32x16x16xf32>
    %26 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %21 : tensor<1x32x16x16xf32>, tensor<1x32x16x16xf32>) outs(%0 : tensor<1x32x16x16xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x32x16x16xf32>
    %padded_382 = tensor.pad %26 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x32x16x16xf32> to tensor<1x32x18x18xf32>
    %27 = tensor.empty() : tensor<1x128x8x8xf32>
    %28 = linalg.fill ins(%cst_374 : f32) outs(%27 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_382, %cst_366 : tensor<1x32x18x18xf32>, tensor<128x32x3x3xf32>) outs(%28 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_365, %cst_364, %cst_364, %cst_365 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%29 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x128x8x8xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x128x8x8xf32>) outs(%27 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x128x8x8xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %30 : tensor<1x128x8x8xf32>, tensor<1x128x8x8xf32>) outs(%27 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x128x8x8xf32>
    %33 = tensor.empty() : tensor<1x64x8x8xf32>
    %34 = linalg.fill ins(%cst_374 : f32) outs(%33 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %cst_363 : tensor<1x128x8x8xf32>, tensor<64x128x1x1xf32>) outs(%34 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %36 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_362, %cst_361, %cst_361, %cst_362 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%35 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_383 = tensor.pad %36 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %37 = tensor.empty() : tensor<1x256x8x8xf32>
    %38 = linalg.fill ins(%cst_374 : f32) outs(%37 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_383, %cst_360 : tensor<1x64x10x10xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_359, %cst_358, %cst_358, %cst_359 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%39 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x256x8x8xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x256x8x8xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %40 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x256x8x8xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%42, %cst_357 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_362, %cst_361, %cst_361, %cst_362 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%43 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x64x8x8xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %36 : tensor<1x64x8x8xf32>, tensor<1x64x8x8xf32>) outs(%33 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_384 = tensor.pad %45 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_384, %cst_356 : tensor<1x64x10x10xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_359, %cst_358, %cst_358, %cst_359 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%46 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x256x8x8xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x256x8x8xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %47 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x256x8x8xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%49, %cst_355 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_362, %cst_361, %cst_361, %cst_362 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%50 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x64x8x8xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %45 : tensor<1x64x8x8xf32>, tensor<1x64x8x8xf32>) outs(%33 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_385 = tensor.pad %52 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %53 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_385, %cst_354 : tensor<1x64x10x10xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %54 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %cst_359, %cst_358, %cst_358, %cst_359 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%53 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x256x8x8xf32>
    %55 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54 : tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x256x8x8xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %54 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x256x8x8xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%56, %cst_353 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_362, %cst_361, %cst_361, %cst_362 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%57 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x64x8x8xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %52 : tensor<1x64x8x8xf32>, tensor<1x64x8x8xf32>) outs(%33 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_386 = tensor.pad %59 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %60 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_386, %cst_352 : tensor<1x64x10x10xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %61 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %cst_359, %cst_358, %cst_358, %cst_359 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%60 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x256x8x8xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x256x8x8xf32>
    %63 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %61 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x256x8x8xf32>
    %64 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%63, %cst_351 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %65 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %cst_362, %cst_361, %cst_361, %cst_362 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%64 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x64x8x8xf32>
    %66 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %59 : tensor<1x64x8x8xf32>, tensor<1x64x8x8xf32>) outs(%33 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_387 = tensor.pad %66 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %67 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_387, %cst_350 : tensor<1x64x10x10xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %68 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %cst_359, %cst_358, %cst_358, %cst_359 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%67 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x256x8x8xf32>
    %69 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x256x8x8xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %68 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x256x8x8xf32>
    %71 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%70, %cst_349 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %72 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %cst_362, %cst_361, %cst_361, %cst_362 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%71 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x64x8x8xf32>
    %73 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %66 : tensor<1x64x8x8xf32>, tensor<1x64x8x8xf32>) outs(%33 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_388 = tensor.pad %73 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %74 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_388, %cst_348 : tensor<1x64x10x10xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %75 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %cst_359, %cst_358, %cst_358, %cst_359 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%74 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x256x8x8xf32>
    %76 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x256x8x8xf32>
    %77 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %75 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%37 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x256x8x8xf32>
    %78 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%77, %cst_347 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %79 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %cst_362, %cst_361, %cst_361, %cst_362 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%78 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x64x8x8xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %73 : tensor<1x64x8x8xf32>, tensor<1x64x8x8xf32>) outs(%33 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_389 = tensor.pad %80 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %81 = tensor.empty() : tensor<1x256x4x4xf32>
    %82 = linalg.fill ins(%cst_374 : f32) outs(%81 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %83 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_389, %cst_346 : tensor<1x64x10x10xf32>, tensor<256x64x3x3xf32>) outs(%82 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_359, %cst_358, %cst_358, %cst_359 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%83 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x256x4x4xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x256x4x4xf32>) outs(%81 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x256x4x4xf32>
    %86 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %84 : tensor<1x256x4x4xf32>, tensor<1x256x4x4xf32>) outs(%81 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x256x4x4xf32>
    %87 = tensor.empty() : tensor<1x96x4x4xf32>
    %88 = linalg.fill ins(%cst_374 : f32) outs(%87 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    %89 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%86, %cst_345 : tensor<1x256x4x4xf32>, tensor<96x256x1x1xf32>) outs(%88 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_344, %cst_343, %cst_343, %cst_344 : tensor<1x96x4x4xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%89 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x96x4x4xf32>
    %padded_390 = tensor.pad %90 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x96x4x4xf32> to tensor<1x96x6x6xf32>
    %91 = tensor.empty() : tensor<1x384x4x4xf32>
    %92 = linalg.fill ins(%cst_374 : f32) outs(%91 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    %93 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_390, %cst_342 : tensor<1x96x6x6xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %94 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%93 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x4x4xf32>
    %95 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x384x4x4xf32>
    %96 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %94 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x4x4xf32>
    %97 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%96, %cst_339 : tensor<1x384x4x4xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %98 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %cst_344, %cst_343, %cst_343, %cst_344 : tensor<1x96x4x4xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%97 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x96x4x4xf32>
    %99 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %90 : tensor<1x96x4x4xf32>, tensor<1x96x4x4xf32>) outs(%87 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x4x4xf32>
    %padded_391 = tensor.pad %99 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x96x4x4xf32> to tensor<1x96x6x6xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_391, %cst_338 : tensor<1x96x6x6xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%100 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x4x4xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x384x4x4xf32>
    %103 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %101 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x4x4xf32>
    %104 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%103, %cst_337 : tensor<1x384x4x4xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %105 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %cst_344, %cst_343, %cst_343, %cst_344 : tensor<1x96x4x4xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%104 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x96x4x4xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %99 : tensor<1x96x4x4xf32>, tensor<1x96x4x4xf32>) outs(%87 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x4x4xf32>
    %padded_392 = tensor.pad %106 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x96x4x4xf32> to tensor<1x96x6x6xf32>
    %107 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_392, %cst_336 : tensor<1x96x6x6xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %108 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%107 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x4x4xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x384x4x4xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %108 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x4x4xf32>
    %111 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %cst_335 : tensor<1x384x4x4xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %112 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %cst_344, %cst_343, %cst_343, %cst_344 : tensor<1x96x4x4xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%111 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x96x4x4xf32>
    %113 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %106 : tensor<1x96x4x4xf32>, tensor<1x96x4x4xf32>) outs(%87 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x4x4xf32>
    %padded_393 = tensor.pad %113 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x96x4x4xf32> to tensor<1x96x6x6xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_393, %cst_334 : tensor<1x96x6x6xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %115 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%114 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x4x4xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x384x4x4xf32>
    %117 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %115 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x4x4xf32>
    %118 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%117, %cst_333 : tensor<1x384x4x4xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %119 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %cst_344, %cst_343, %cst_343, %cst_344 : tensor<1x96x4x4xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%118 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x96x4x4xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %113 : tensor<1x96x4x4xf32>, tensor<1x96x4x4xf32>) outs(%87 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x4x4xf32>
    %padded_394 = tensor.pad %120 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x96x4x4xf32> to tensor<1x96x6x6xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_394, %cst_332 : tensor<1x96x6x6xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%121 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x4x4xf32>
    %123 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x384x4x4xf32>
    %124 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %122 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x4x4xf32>
    %125 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%124, %cst_331 : tensor<1x384x4x4xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %126 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %cst_344, %cst_343, %cst_343, %cst_344 : tensor<1x96x4x4xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%125 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x96x4x4xf32>
    %127 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %120 : tensor<1x96x4x4xf32>, tensor<1x96x4x4xf32>) outs(%87 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x4x4xf32>
    %padded_395 = tensor.pad %127 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x96x4x4xf32> to tensor<1x96x6x6xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_395, %cst_330 : tensor<1x96x6x6xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %129 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%128 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x4x4xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x384x4x4xf32>
    %131 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %129 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x4x4xf32>
    %132 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%131, %cst_329 : tensor<1x384x4x4xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x4x4xf32>) -> tensor<1x96x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %133 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %cst_344, %cst_343, %cst_343, %cst_344 : tensor<1x96x4x4xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%132 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x96x4x4xf32>
    %134 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %127 : tensor<1x96x4x4xf32>, tensor<1x96x4x4xf32>) outs(%87 : tensor<1x96x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x4x4xf32>
    %135 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%134, %cst_328 : tensor<1x96x4x4xf32>, tensor<384x96x1x1xf32>) outs(%92 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %136 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%135 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x4x4xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136 : tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x384x4x4xf32>
    %138 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %136 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%91 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x4x4xf32>
    %padded_396 = tensor.pad %138 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x384x4x4xf32> to tensor<1x384x6x6xf32>
    %139 = tensor.empty() : tensor<1x384x2x2xf32>
    %140 = linalg.fill ins(%cst_374 : f32) outs(%139 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %collapsed = tensor.collapse_shape %cst_327 [[0, 1], [2], [3]] : tensor<384x1x3x3xf32> into tensor<384x3x3xf32>
    %141 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_396, %collapsed : tensor<1x384x6x6xf32>, tensor<384x3x3xf32>) outs(%140 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%141 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x2x2xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x384x2x2xf32>) outs(%139 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x384x2x2xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %142 : tensor<1x384x2x2xf32>, tensor<1x384x2x2xf32>) outs(%139 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x2x2xf32>
    %145 = tensor.empty() : tensor<1x384x1x1xf32>
    %146 = linalg.fill ins(%cst_374 : f32) outs(%145 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %147 = tensor.empty() : tensor<2x2xf32>
    %148 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%144, %147 : tensor<1x384x2x2xf32>, tensor<2x2xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %150 = tensor.empty() : tensor<1x24x1x1xf32>
    %151 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_326 : tensor<24xf32>) outs(%150 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x24x1x1xf32>
    %152 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%149, %cst_325 : tensor<1x384x1x1xf32>, tensor<24x384x1x1xf32>) outs(%151 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %153 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x24x1x1xf32>) outs(%150 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x24x1x1xf32>
    %154 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %152 : tensor<1x24x1x1xf32>, tensor<1x24x1x1xf32>) outs(%150 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x24x1x1xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_340 : tensor<384xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x1x1xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%154, %cst_324 : tensor<1x24x1x1xf32>, tensor<384x24x1x1xf32>) outs(%155 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %157 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x384x1x1xf32>
    %158 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %144 : tensor<1x384x1x1xf32>, tensor<1x384x2x2xf32>) outs(%139 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x2x2xf32>
    %159 = tensor.empty() : tensor<1x192x2x2xf32>
    %160 = linalg.fill ins(%cst_374 : f32) outs(%159 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%158, %cst_323 : tensor<1x384x2x2xf32>, tensor<192x384x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %162 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %cst_322, %cst_321, %cst_321, %cst_322 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%161 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x192x2x2xf32>
    %163 = tensor.empty() : tensor<1x768x2x2xf32>
    %164 = linalg.fill ins(%cst_374 : f32) outs(%163 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    %165 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%162, %cst_320 : tensor<1x192x2x2xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %166 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%165 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %167 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %168 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %166 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_397 = tensor.pad %168 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_398 = tensor.collapse_shape %cst_317 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %169 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_397, %collapsed_398 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %170 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%169 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %172 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %170 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %173 = tensor.empty() : tensor<1x768x1x1xf32>
    %174 = linalg.fill ins(%cst_374 : f32) outs(%173 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %175 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%172, %147 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %176 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x1x1xf32>
    %177 = tensor.empty() : tensor<1x48x1x1xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_316 : tensor<48xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %179 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%176, %cst_315 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%178 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %180 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x48x1x1xf32>
    %181 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %179 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x48x1x1xf32>
    %182 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_318 : tensor<768xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %183 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%181, %cst_314 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%182 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %184 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x1x1xf32>
    %185 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %172 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %186 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%185, %cst_313 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %187 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %cst_322, %cst_321, %cst_321, %cst_322 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%186 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x192x2x2xf32>
    %188 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %162 : tensor<1x192x2x2xf32>, tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x192x2x2xf32>
    %189 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%188, %cst_312 : tensor<1x192x2x2xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %190 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%189 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %191 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %192 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %190 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_399 = tensor.pad %192 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_400 = tensor.collapse_shape %cst_311 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %193 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_399, %collapsed_400 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %194 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%193 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %195 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %194 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %197 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%196, %147 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %198 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x1x1xf32>
    %199 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%198, %cst_310 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%178 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %200 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x48x1x1xf32>
    %201 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %199 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x48x1x1xf32>
    %202 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%201, %cst_309 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%182 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %203 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x1x1xf32>
    %204 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %196 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %205 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%204, %cst_308 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %206 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %cst_322, %cst_321, %cst_321, %cst_322 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%205 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x192x2x2xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %188 : tensor<1x192x2x2xf32>, tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x192x2x2xf32>
    %208 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%207, %cst_307 : tensor<1x192x2x2xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %209 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%208 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %210 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %209 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_401 = tensor.pad %211 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_402 = tensor.collapse_shape %cst_306 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %212 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_401, %collapsed_402 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %213 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%212 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %214 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %215 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %213 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %216 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%215, %147 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %217 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x1x1xf32>
    %218 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%217, %cst_305 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%178 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %219 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x48x1x1xf32>
    %220 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %218 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x48x1x1xf32>
    %221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%220, %cst_304 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%182 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %222 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x1x1xf32>
    %223 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %215 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %224 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%223, %cst_303 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %225 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_322, %cst_321, %cst_321, %cst_322 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%224 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x192x2x2xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %207 : tensor<1x192x2x2xf32>, tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x192x2x2xf32>
    %227 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%226, %cst_302 : tensor<1x192x2x2xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %228 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%227 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %229 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %228 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_403 = tensor.pad %230 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_404 = tensor.collapse_shape %cst_301 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %231 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_403, %collapsed_404 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %232 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%231 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %233 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %234 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %232 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %235 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%234, %147 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %236 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x1x1xf32>
    %237 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%236, %cst_300 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%178 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %238 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x48x1x1xf32>
    %239 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %237 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x48x1x1xf32>
    %240 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%239, %cst_299 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%182 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %241 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x1x1xf32>
    %242 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %234 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %243 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%242, %cst_298 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %244 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %cst_322, %cst_321, %cst_321, %cst_322 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%243 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x192x2x2xf32>
    %245 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %226 : tensor<1x192x2x2xf32>, tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x192x2x2xf32>
    %246 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%245, %cst_297 : tensor<1x192x2x2xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %247 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%246 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %248 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %247 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_405 = tensor.pad %249 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_406 = tensor.collapse_shape %cst_296 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %250 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_405, %collapsed_406 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %251 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%250 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %252 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %253 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %251 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %254 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%253, %147 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %255 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x1x1xf32>
    %256 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%255, %cst_295 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%178 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %257 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x48x1x1xf32>
    %258 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %256 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x48x1x1xf32>
    %259 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%258, %cst_294 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%182 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x1x1xf32>
    %261 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %253 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %262 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%261, %cst_293 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %263 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %cst_322, %cst_321, %cst_321, %cst_322 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%262 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x192x2x2xf32>
    %264 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %245 : tensor<1x192x2x2xf32>, tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x192x2x2xf32>
    %265 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%264, %cst_292 : tensor<1x192x2x2xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %266 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%265 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %267 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %268 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %266 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_407 = tensor.pad %268 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_408 = tensor.collapse_shape %cst_291 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %269 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_407, %collapsed_408 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %270 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%269 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %271 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %272 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %270 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %273 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%272, %147 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %274 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x1x1xf32>
    %275 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%274, %cst_290 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%178 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %276 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x48x1x1xf32>
    %277 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276, %275 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x48x1x1xf32>
    %278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%277, %cst_289 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%182 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %279 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x1x1xf32>
    %280 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %272 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %281 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%280, %cst_288 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_322, %cst_321, %cst_321, %cst_322 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%281 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x192x2x2xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %264 : tensor<1x192x2x2xf32>, tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x192x2x2xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%283, %cst_287 : tensor<1x192x2x2xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %285 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%284 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %286 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %287 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286, %285 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_409 = tensor.pad %287 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_410 = tensor.collapse_shape %cst_286 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %288 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_409, %collapsed_410 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %289 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%288 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %290 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %291 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290, %289 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %292 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%291, %147 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %293 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x1x1xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%293, %cst_285 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%178 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %295 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x48x1x1xf32>
    %296 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295, %294 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x48x1x1xf32>
    %297 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%296, %cst_284 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%182 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %298 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x1x1xf32>
    %299 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %291 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %300 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%299, %cst_283 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %301 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %cst_322, %cst_321, %cst_321, %cst_322 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%300 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x192x2x2xf32>
    %302 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %283 : tensor<1x192x2x2xf32>, tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x192x2x2xf32>
    %303 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%302, %cst_282 : tensor<1x192x2x2xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %304 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%303 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %305 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %306 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %304 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_411 = tensor.pad %306 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_412 = tensor.collapse_shape %cst_281 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %307 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_411, %collapsed_412 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %308 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%307 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %310 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309, %308 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %311 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%310, %147 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %312 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x1x1xf32>
    %313 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%312, %cst_280 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%178 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %314 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x48x1x1xf32>
    %315 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %313 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x48x1x1xf32>
    %316 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%315, %cst_279 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%182 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %317 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x1x1xf32>
    %318 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %310 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %319 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%318, %cst_278 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %320 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %cst_322, %cst_321, %cst_321, %cst_322 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%319 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x192x2x2xf32>
    %321 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %302 : tensor<1x192x2x2xf32>, tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x192x2x2xf32>
    %322 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%321, %cst_277 : tensor<1x192x2x2xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %323 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%322 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %324 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %325 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %323 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_413 = tensor.pad %325 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_414 = tensor.collapse_shape %cst_276 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %326 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_413, %collapsed_414 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %327 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %cst_319, %cst_318, %cst_318, %cst_319 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%326 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x768x2x2xf32>
    %328 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327 : tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x2x2xf32>
    %329 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %327 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %330 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%329, %147 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %331 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x1x1xf32>
    %332 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%331, %cst_275 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%178 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %333 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x48x1x1xf32>
    %334 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %332 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x48x1x1xf32>
    %335 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%334, %cst_274 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%182 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %336 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x768x1x1xf32>
    %337 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %329 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%163 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x768x2x2xf32>
    %338 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%337, %cst_273 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %339 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %cst_322, %cst_321, %cst_321, %cst_322 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%338 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x192x2x2xf32>
    %340 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339, %321 : tensor<1x192x2x2xf32>, tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x192x2x2xf32>
    %341 = tensor.empty() : tensor<1x1152x2x2xf32>
    %342 = linalg.fill ins(%cst_374 : f32) outs(%341 : tensor<1x1152x2x2xf32>) -> tensor<1x1152x2x2xf32>
    %343 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%340, %cst_272 : tensor<1x192x2x2xf32>, tensor<1152x192x1x1xf32>) outs(%342 : tensor<1x1152x2x2xf32>) -> tensor<1x1152x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %344 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %cst_271, %cst_270, %cst_270, %cst_271 : tensor<1x1152x2x2xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%343 : tensor<1x1152x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1152x2x2xf32>
    %345 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x1152x2x2xf32>) outs(%341 : tensor<1x1152x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1152x2x2xf32>
    %346 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345, %344 : tensor<1x1152x2x2xf32>, tensor<1x1152x2x2xf32>) outs(%341 : tensor<1x1152x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1152x2x2xf32>
    %padded_415 = tensor.pad %346 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1152x2x2xf32> to tensor<1x1152x4x4xf32>
    %collapsed_416 = tensor.collapse_shape %cst_269 [[0, 1], [2], [3]] : tensor<1152x1x3x3xf32> into tensor<1152x3x3xf32>
    %347 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_415, %collapsed_416 : tensor<1x1152x4x4xf32>, tensor<1152x3x3xf32>) outs(%342 : tensor<1x1152x2x2xf32>) -> tensor<1x1152x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %348 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347, %cst_271, %cst_270, %cst_270, %cst_271 : tensor<1x1152x2x2xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%347 : tensor<1x1152x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1152x2x2xf32>
    %349 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348 : tensor<1x1152x2x2xf32>) outs(%341 : tensor<1x1152x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1152x2x2xf32>
    %350 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %348 : tensor<1x1152x2x2xf32>, tensor<1x1152x2x2xf32>) outs(%341 : tensor<1x1152x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1152x2x2xf32>
    %351 = tensor.empty() : tensor<1x1152x1x1xf32>
    %352 = linalg.fill ins(%cst_374 : f32) outs(%351 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %353 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%350, %147 : tensor<1x1152x2x2xf32>, tensor<2x2xf32>) outs(%352 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %354 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x1152x1x1xf32>) outs(%351 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1152x1x1xf32>
    %355 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%354, %cst_268 : tensor<1x1152x1x1xf32>, tensor<48x1152x1x1xf32>) outs(%178 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %356 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x48x1x1xf32>
    %357 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %355 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x48x1x1xf32>
    %358 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_270 : tensor<1152xf32>) outs(%351 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1152x1x1xf32>
    %359 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%357, %cst_267 : tensor<1x48x1x1xf32>, tensor<1152x48x1x1xf32>) outs(%358 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %360 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359 : tensor<1x1152x1x1xf32>) outs(%351 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1152x1x1xf32>
    %361 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360, %350 : tensor<1x1152x1x1xf32>, tensor<1x1152x2x2xf32>) outs(%341 : tensor<1x1152x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1152x2x2xf32>
    %362 = tensor.empty() : tensor<1x224x2x2xf32>
    %363 = linalg.fill ins(%cst_374 : f32) outs(%362 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    %364 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%361, %cst_266 : tensor<1x1152x2x2xf32>, tensor<224x1152x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %365 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%364 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %366 = tensor.empty() : tensor<1x1344x2x2xf32>
    %367 = linalg.fill ins(%cst_374 : f32) outs(%366 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    %368 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%365, %cst_263 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %369 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%368 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %370 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %371 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370, %369 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_417 = tensor.pad %371 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_418 = tensor.collapse_shape %cst_260 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %372 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_417, %collapsed_418 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %373 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%372 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %374 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %375 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374, %373 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %376 = tensor.empty() : tensor<1x1344x1x1xf32>
    %377 = linalg.fill ins(%cst_374 : f32) outs(%376 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %378 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%375, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %379 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %380 = tensor.empty() : tensor<1x56x1x1xf32>
    %381 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_259 : tensor<56xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %382 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%379, %cst_258 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %383 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %384 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383, %382 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %385 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_261 : tensor<1344xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %386 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%384, %cst_257 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %387 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %388 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %375 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %389 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%388, %cst_256 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %390 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%389 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %391 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390, %365 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %392 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%391, %cst_255 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %393 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%392 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %394 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %395 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %393 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_419 = tensor.pad %395 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_420 = tensor.collapse_shape %cst_254 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %396 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_419, %collapsed_420 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %397 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%396 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %398 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %399 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398, %397 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %400 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%399, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %401 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %402 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%401, %cst_253 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %403 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %404 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %402 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %405 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%404, %cst_252 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %406 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %407 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406, %399 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %408 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%407, %cst_251 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %409 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%408 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %410 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409, %391 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %411 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%410, %cst_250 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %412 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%411 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %413 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %414 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413, %412 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_421 = tensor.pad %414 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_422 = tensor.collapse_shape %cst_249 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %415 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_421, %collapsed_422 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %416 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%415 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %417 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %418 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %416 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %419 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%418, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %420 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %421 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%420, %cst_248 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %422 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %423 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %421 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %424 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%423, %cst_247 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %425 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %426 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425, %418 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %427 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%426, %cst_246 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %428 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%427 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %429 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428, %410 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %430 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%429, %cst_245 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %431 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%430 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %432 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %433 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432, %431 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_423 = tensor.pad %433 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_424 = tensor.collapse_shape %cst_244 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %434 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_423, %collapsed_424 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %435 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%434 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %436 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %437 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436, %435 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %438 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%437, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %439 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %440 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%439, %cst_243 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %441 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %442 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %440 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %443 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%442, %cst_242 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %444 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %445 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %437 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %446 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%445, %cst_241 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %447 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%446 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %448 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447, %429 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %449 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%448, %cst_240 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %450 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%449 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %451 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %452 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %450 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_425 = tensor.pad %452 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_426 = tensor.collapse_shape %cst_239 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %453 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_425, %collapsed_426 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %454 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%453 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %455 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %456 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455, %454 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %457 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%456, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %458 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %459 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%458, %cst_238 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %460 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %461 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460, %459 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %462 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%461, %cst_237 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %463 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %464 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463, %456 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %465 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%464, %cst_236 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %466 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%465 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %467 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466, %448 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %468 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%467, %cst_235 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %469 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%468 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %470 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %471 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470, %469 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_427 = tensor.pad %471 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_428 = tensor.collapse_shape %cst_234 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %472 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_427, %collapsed_428 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %473 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%472 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %474 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %475 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474, %473 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %476 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%475, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %477 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %478 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%477, %cst_233 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %479 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %480 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479, %478 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %481 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%480, %cst_232 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %482 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %483 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482, %475 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %484 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%483, %cst_231 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %485 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%484 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %486 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%485, %467 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %487 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%486, %cst_230 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %488 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%487 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %489 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %490 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489, %488 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_429 = tensor.pad %490 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_430 = tensor.collapse_shape %cst_229 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %491 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_429, %collapsed_430 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %492 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%491 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %493 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %494 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493, %492 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %495 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%494, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %496 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %497 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%496, %cst_228 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %498 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %499 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %497 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %500 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%499, %cst_227 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %501 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %502 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %494 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %503 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%502, %cst_226 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %504 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%503 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %505 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504, %486 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %506 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%505, %cst_225 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %507 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%506, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%506 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %508 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%507 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %509 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %507 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_431 = tensor.pad %509 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_432 = tensor.collapse_shape %cst_224 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %510 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_431, %collapsed_432 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %511 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%510 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %512 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %513 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512, %511 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %514 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%513, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %515 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %516 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%515, %cst_223 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %517 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %518 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517, %516 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %519 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%518, %cst_222 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %520 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %521 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520, %513 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %522 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%521, %cst_221 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %523 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%522 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %524 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523, %505 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %525 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%524, %cst_220 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %526 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%525 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %527 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %528 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527, %526 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_433 = tensor.pad %528 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_434 = tensor.collapse_shape %cst_219 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %529 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_433, %collapsed_434 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %530 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%529 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %531 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %532 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531, %530 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %533 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%532, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %534 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %535 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%534, %cst_218 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %536 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %537 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %535 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %538 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%537, %cst_217 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %539 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %540 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539, %532 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %541 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%540, %cst_216 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %542 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%541 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %543 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542, %524 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %544 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%543, %cst_215 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %545 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%544 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %546 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %547 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %545 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_435 = tensor.pad %547 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_436 = tensor.collapse_shape %cst_214 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %548 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_435, %collapsed_436 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %549 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%548 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %550 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %551 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%550, %549 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %552 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%551, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %553 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %554 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%553, %cst_213 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %555 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %556 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555, %554 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %557 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%556, %cst_212 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %558 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %559 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558, %551 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %560 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%559, %cst_211 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %561 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%560 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %562 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561, %543 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %563 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%562, %cst_210 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %564 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%563 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %565 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %566 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%565, %564 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_437 = tensor.pad %566 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_438 = tensor.collapse_shape %cst_209 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %567 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_437, %collapsed_438 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %568 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%567 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %569 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %570 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%569, %568 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %571 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%570, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %572 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %573 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%572, %cst_208 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %574 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %575 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %573 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %576 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%575, %cst_207 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %577 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %578 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577, %570 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %579 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%578, %cst_206 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %580 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%579 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %581 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%580, %562 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %582 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%581, %cst_205 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %583 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%582 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %584 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %585 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584, %583 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_439 = tensor.pad %585 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_440 = tensor.collapse_shape %cst_204 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %586 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_439, %collapsed_440 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %587 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%586 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %588 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %589 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %587 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %590 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%589, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %591 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%590 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %592 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%591, %cst_203 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %593 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %594 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593, %592 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %595 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%594, %cst_202 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %596 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %597 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596, %589 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %598 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%597, %cst_201 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %599 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%598, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%598 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %600 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599, %581 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %601 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%600, %cst_200 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %602 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%601 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %603 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %604 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603, %602 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_441 = tensor.pad %604 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_442 = tensor.collapse_shape %cst_199 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %605 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_441, %collapsed_442 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %606 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%605 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %607 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %608 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%607, %606 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %609 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%608, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %610 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %611 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%610, %cst_198 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %612 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %613 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%612, %611 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %614 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%613, %cst_197 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %615 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %616 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615, %608 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %617 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%616, %cst_196 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %618 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%617, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%617 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %619 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %600 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %620 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%619, %cst_195 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %621 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%620 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %622 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %623 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622, %621 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_443 = tensor.pad %623 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_444 = tensor.collapse_shape %cst_194 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %624 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_443, %collapsed_444 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %625 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%624 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %626 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%625 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %627 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%626, %625 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %628 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%627, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %629 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %630 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%629, %cst_193 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %631 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%630 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %632 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631, %630 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %633 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%632, %cst_192 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %634 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %635 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%634, %627 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %636 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%635, %cst_191 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %637 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%636 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %638 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%637, %619 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %639 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%638, %cst_190 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %640 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%639 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %641 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %642 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%641, %640 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_445 = tensor.pad %642 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_446 = tensor.collapse_shape %cst_189 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %643 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_445, %collapsed_446 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %644 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%643 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %645 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %646 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%645, %644 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %647 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%646, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %648 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%647 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %649 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%648, %cst_188 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %650 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %651 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%650, %649 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %652 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%651, %cst_187 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %653 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %654 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%653, %646 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %655 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%654, %cst_186 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %656 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%655 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %657 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656, %638 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %658 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%657, %cst_185 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %659 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%658 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %660 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%659 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %661 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%660, %659 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_447 = tensor.pad %661 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_448 = tensor.collapse_shape %cst_184 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %662 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_447, %collapsed_448 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %663 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%662, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%662 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %664 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %665 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%664, %663 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %666 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%665, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %667 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %668 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%667, %cst_183 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %669 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %670 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669, %668 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %671 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%670, %cst_182 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %672 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%671 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %673 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672, %665 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %674 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%673, %cst_181 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %675 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%674, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%674 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %676 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675, %657 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %677 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%676, %cst_180 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %678 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%677, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%677 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %679 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%678 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %680 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%679, %678 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_449 = tensor.pad %680 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_450 = tensor.collapse_shape %cst_179 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %681 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_449, %collapsed_450 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %682 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%681, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%681 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %683 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%682 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %684 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%683, %682 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %685 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%684, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %686 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%685 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %687 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%686, %cst_178 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %688 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%687 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %689 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%688, %687 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %690 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%689, %cst_177 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %691 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%690 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %692 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%691, %684 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %693 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%692, %cst_176 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %694 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%693, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%693 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %695 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694, %676 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %696 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%695, %cst_175 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %697 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%696, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%696 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %698 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%697 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %699 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%698, %697 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_451 = tensor.pad %699 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_452 = tensor.collapse_shape %cst_174 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %700 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_451, %collapsed_452 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %701 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%700, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%700 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %702 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%701 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %703 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%702, %701 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %704 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%703, %147 : tensor<1x1344x2x2xf32>, tensor<2x2xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %705 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%704 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.divf %in, %cst_376 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %706 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%705, %cst_173 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %707 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%706 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %708 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%707, %706 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %709 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%708, %cst_172 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %710 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%709 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %711 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%710, %703 : tensor<1x1344x1x1xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %712 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%711, %cst_171 : tensor<1x1344x2x2xf32>, tensor<224x1344x1x1xf32>) outs(%363 : tensor<1x224x2x2xf32>) -> tensor<1x224x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %713 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%712, %cst_265, %cst_264, %cst_264, %cst_265 : tensor<1x224x2x2xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%712 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x224x2x2xf32>
    %714 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%713, %695 : tensor<1x224x2x2xf32>, tensor<1x224x2x2xf32>) outs(%362 : tensor<1x224x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x224x2x2xf32>
    %715 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%714, %cst_170 : tensor<1x224x2x2xf32>, tensor<1344x224x1x1xf32>) outs(%367 : tensor<1x1344x2x2xf32>) -> tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %716 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%715, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%715 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x2x2xf32>
    %717 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%716 : tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x2x2xf32>
    %718 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%717, %716 : tensor<1x1344x2x2xf32>, tensor<1x1344x2x2xf32>) outs(%366 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x2x2xf32>
    %padded_453 = tensor.pad %718 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x1344x2x2xf32> to tensor<1x1344x4x4xf32>
    %collapsed_454 = tensor.collapse_shape %cst_169 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %719 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_453, %collapsed_454 : tensor<1x1344x4x4xf32>, tensor<1344x3x3xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %720 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719, %cst_262, %cst_261, %cst_261, %cst_262 : tensor<1x1344x1x1xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%719 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1344x1x1xf32>
    %721 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%720 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %722 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%721, %720 : tensor<1x1344x1x1xf32>, tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %723 = tensor.empty() : tensor<1x1xf32>
    %724 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%722, %723 : tensor<1x1344x1x1xf32>, tensor<1x1xf32>) outs(%377 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %725 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%724, %cst_168 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%381 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %726 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%725 : tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x56x1x1xf32>
    %727 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726, %725 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%380 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x56x1x1xf32>
    %728 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%727, %cst_167 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%385 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %729 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%728 : tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1344x1x1xf32>
    %730 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%729, %722 : tensor<1x1344x1x1xf32>, tensor<1x1344x1x1xf32>) outs(%376 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1344x1x1xf32>
    %731 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%730, %cst_166 : tensor<1x1344x1x1xf32>, tensor<384x1344x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %732 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%731, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%731 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %733 = tensor.empty() : tensor<1x2304x1x1xf32>
    %734 = linalg.fill ins(%cst_374 : f32) outs(%733 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %735 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%732, %cst_165 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %736 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%735 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %737 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%736 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %738 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%737, %736 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_455 = tensor.pad %738 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_456 = tensor.collapse_shape %cst_162 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %739 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_455, %collapsed_456 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %740 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%739, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%739 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %741 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%740 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %742 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%741, %740 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %743 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%742, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %744 = tensor.empty() : tensor<1x96x1x1xf32>
    %745 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_343 : tensor<96xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %746 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%743, %cst_161 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %747 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%746 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %748 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%747, %746 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %749 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_163 : tensor<2304xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %750 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%748, %cst_160 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %751 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%750 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %752 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%751, %742 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %753 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%752, %cst_159 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %754 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%753, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%753 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %755 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%754, %732 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %756 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%755, %cst_158 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %757 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%756, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%756 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %758 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%757 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %759 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%758, %757 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_457 = tensor.pad %759 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_458 = tensor.collapse_shape %cst_157 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %760 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_457, %collapsed_458 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %761 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%760, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%760 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %762 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%761 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %763 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%762, %761 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %764 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%763, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %765 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%764, %cst_156 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %766 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%765 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %767 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%766, %765 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %768 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%767, %cst_155 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %769 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%768 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %770 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%769, %763 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %771 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%770, %cst_154 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %772 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%771, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%771 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %773 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%772, %755 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %774 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%773, %cst_153 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %775 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%774, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%774 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %776 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%775 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %777 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%776, %775 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_459 = tensor.pad %777 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_460 = tensor.collapse_shape %cst_152 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %778 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_459, %collapsed_460 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %779 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%778, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%778 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %780 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%779 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %781 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%780, %779 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %782 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%781, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %783 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%782, %cst_151 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %784 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%783 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %785 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%784, %783 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %786 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%785, %cst_150 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %787 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%786 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %788 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%787, %781 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %789 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%788, %cst_149 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %790 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%789, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%789 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %791 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%790, %773 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %792 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%791, %cst_148 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %793 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%792, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%792 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %794 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%793 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %795 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%794, %793 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_461 = tensor.pad %795 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_462 = tensor.collapse_shape %cst_147 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %796 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_461, %collapsed_462 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %797 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%796, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%796 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %798 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%797 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %799 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%798, %797 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %800 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%799, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %801 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%800, %cst_146 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %802 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%801 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %803 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%802, %801 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %804 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%803, %cst_145 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %805 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%804 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %806 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%805, %799 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %807 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%806, %cst_144 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %808 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%807, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%807 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %809 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%808, %791 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %810 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%809, %cst_143 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %811 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%810, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%810 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %812 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%811 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %813 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%812, %811 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_463 = tensor.pad %813 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_464 = tensor.collapse_shape %cst_142 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %814 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_463, %collapsed_464 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %815 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%814, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%814 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %816 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%815 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %817 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%816, %815 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %818 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%817, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %819 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%818, %cst_141 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %820 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%819 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %821 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%820, %819 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %822 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%821, %cst_140 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %823 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%822 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %824 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%823, %817 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %825 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%824, %cst_139 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %826 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%825, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%825 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %827 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%826, %809 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %828 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%827, %cst_138 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %829 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%828, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%828 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %830 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%829 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %831 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%830, %829 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_465 = tensor.pad %831 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_466 = tensor.collapse_shape %cst_137 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %832 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_465, %collapsed_466 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %833 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%832, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%832 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %834 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%833 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %835 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%834, %833 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %836 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%835, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %837 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%836, %cst_136 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %838 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%837 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %839 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%838, %837 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %840 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%839, %cst_135 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %841 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%840 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %842 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%841, %835 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %843 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%842, %cst_134 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %844 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%843, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%843 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %845 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%844, %827 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %846 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%845, %cst_133 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %847 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%846, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%846 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %848 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%847 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %849 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%848, %847 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_467 = tensor.pad %849 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_468 = tensor.collapse_shape %cst_132 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %850 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_467, %collapsed_468 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %851 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%850, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%850 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %852 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%851 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %853 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%852, %851 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %854 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%853, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %855 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%854, %cst_131 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %856 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%855 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %857 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%856, %855 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %858 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%857, %cst_130 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %859 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%858 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %860 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%859, %853 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %861 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%860, %cst_129 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %862 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%861, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%861 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %863 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%862, %845 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %864 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%863, %cst_128 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %865 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%864, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%864 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %866 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%865 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %867 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%866, %865 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_469 = tensor.pad %867 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_470 = tensor.collapse_shape %cst_127 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %868 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_469, %collapsed_470 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %869 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%868, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%868 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %870 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%869 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %871 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%870, %869 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %872 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%871, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %873 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%872, %cst_126 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %874 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%873 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %875 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%874, %873 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %876 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%875, %cst_125 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %877 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%876 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %878 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%877, %871 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %879 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%878, %cst_124 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %880 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%879, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%879 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %881 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%880, %863 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %882 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%881, %cst_123 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %883 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%882, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%882 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %884 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%883 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %885 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%884, %883 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_471 = tensor.pad %885 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_472 = tensor.collapse_shape %cst_122 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %886 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_471, %collapsed_472 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %887 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%886, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%886 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %888 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%887 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %889 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%888, %887 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %890 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%889, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %891 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%890, %cst_121 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %892 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%891 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %893 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%892, %891 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %894 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%893, %cst_120 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %895 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%894 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %896 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%895, %889 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %897 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%896, %cst_119 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %898 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%897, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%897 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %899 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%898, %881 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %900 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%899, %cst_118 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %901 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%900, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%900 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %902 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%901 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %903 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%902, %901 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_473 = tensor.pad %903 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_474 = tensor.collapse_shape %cst_117 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %904 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_473, %collapsed_474 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %905 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%904, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%904 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %906 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%905 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %907 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%906, %905 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %908 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%907, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %909 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%908, %cst_116 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %910 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%909 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %911 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%910, %909 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %912 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%911, %cst_115 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %913 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%912 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %914 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%913, %907 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %915 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%914, %cst_114 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %916 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%915, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%915 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %917 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%916, %899 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %918 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%917, %cst_113 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %919 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%918, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%918 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %920 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%919 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %921 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%920, %919 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_475 = tensor.pad %921 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_476 = tensor.collapse_shape %cst_112 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %922 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_475, %collapsed_476 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %923 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%922, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%922 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %924 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%923 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %925 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%924, %923 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %926 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%925, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %927 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%926, %cst_111 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %928 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%927 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %929 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%928, %927 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %930 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%929, %cst_110 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %931 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%930 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %932 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%931, %925 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %933 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%932, %cst_109 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %934 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%933, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%933 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %935 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%934, %917 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %936 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%935, %cst_108 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %937 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%936, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%936 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %938 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%937 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %939 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%938, %937 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_477 = tensor.pad %939 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_478 = tensor.collapse_shape %cst_107 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %940 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_477, %collapsed_478 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %941 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%940, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%940 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %942 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%941 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %943 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%942, %941 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %944 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%943, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %945 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%944, %cst_106 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %946 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%945 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %947 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%946, %945 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %948 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%947, %cst_105 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %949 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%948 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %950 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%949, %943 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %951 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%950, %cst_104 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %952 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%951, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%951 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %953 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%952, %935 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %954 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%953, %cst_103 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %955 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%954, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%954 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %956 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%955 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %957 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%956, %955 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_479 = tensor.pad %957 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_480 = tensor.collapse_shape %cst_102 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %958 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_479, %collapsed_480 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %959 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%958, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%958 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %960 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%959 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %961 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%960, %959 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %962 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%961, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %963 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%962, %cst_101 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %964 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%963 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %965 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%964, %963 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %966 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%965, %cst_100 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %967 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%966 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %968 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%967, %961 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %969 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%968, %cst_99 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %970 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%969, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%969 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %971 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%970, %953 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %972 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%971, %cst_98 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %973 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%972, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%972 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %974 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%973 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %975 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%974, %973 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_481 = tensor.pad %975 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_482 = tensor.collapse_shape %cst_97 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %976 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_481, %collapsed_482 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %977 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%976, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%976 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %978 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%977 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %979 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%978, %977 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %980 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%979, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %981 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%980, %cst_96 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %982 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%981 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %983 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%982, %981 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %984 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%983, %cst_95 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %985 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%984 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %986 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%985, %979 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %987 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%986, %cst_94 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %988 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%987, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%987 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %989 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%988, %971 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %990 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%989, %cst_93 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %991 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%990, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%990 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %992 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%991 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %993 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%992, %991 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_483 = tensor.pad %993 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_484 = tensor.collapse_shape %cst_92 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %994 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_483, %collapsed_484 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %995 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%994, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%994 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %996 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%995 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %997 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%996, %995 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %998 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%997, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %999 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%998, %cst_91 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1000 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%999 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %1001 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1000, %999 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %1002 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1001, %cst_90 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1003 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1002 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1004 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1003, %997 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1005 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1004, %cst_89 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1006 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1005, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1005 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %1007 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1006, %989 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %1008 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1007, %cst_88 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1009 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1008, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1008 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1010 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1009 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1011 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1010, %1009 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_485 = tensor.pad %1011 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_486 = tensor.collapse_shape %cst_87 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1012 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_485, %collapsed_486 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1013 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1012, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1012 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1014 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1013 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1015 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1014, %1013 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1016 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1015, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1017 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1016, %cst_86 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1018 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1017 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %1019 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1018, %1017 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %1020 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1019, %cst_85 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1021 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1020 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1022 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1021, %1015 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1023 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1022, %cst_84 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1024 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1023, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1023 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %1025 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1024, %1007 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %1026 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1025, %cst_83 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1027 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1026, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1026 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1028 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1027 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1029 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1028, %1027 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_487 = tensor.pad %1029 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_488 = tensor.collapse_shape %cst_82 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1030 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_487, %collapsed_488 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1031 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1030, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1030 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1032 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1031 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1033 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1032, %1031 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1034 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1033, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1035 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1034, %cst_81 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1036 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1035 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %1037 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1036, %1035 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %1038 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1037, %cst_80 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1039 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1038 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1040 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1039, %1033 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1041 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1040, %cst_79 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1042 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1041, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1041 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %1043 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1042, %1025 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %1044 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1043, %cst_78 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1045 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1044, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1044 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1046 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1045 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1047 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1046, %1045 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_489 = tensor.pad %1047 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_490 = tensor.collapse_shape %cst_77 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1048 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_489, %collapsed_490 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1049 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1048, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1048 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1050 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1049 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1051 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1050, %1049 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1052 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1051, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1053 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1052, %cst_76 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1054 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1053 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %1055 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1054, %1053 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %1056 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1055, %cst_75 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1057 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1056 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1058 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1057, %1051 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1059 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1058, %cst_74 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1060 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1059, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1059 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %1061 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1060, %1043 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %1062 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1061, %cst_73 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1063 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1062, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1062 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1064 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1063 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1065 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1064, %1063 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_491 = tensor.pad %1065 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_492 = tensor.collapse_shape %cst_72 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1066 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_491, %collapsed_492 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1067 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1066, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1066 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1068 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1067 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1069 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1068, %1067 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1070 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1069, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1071 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1070, %cst_71 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1072 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1071 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %1073 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1072, %1071 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %1074 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1073, %cst_70 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1075 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1074 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1076 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1075, %1069 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1077 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1076, %cst_69 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1078 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1077, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1077 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %1079 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1078, %1061 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %1080 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1079, %cst_68 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1081 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1080, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1080 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1082 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1081 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1083 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1082, %1081 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_493 = tensor.pad %1083 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_494 = tensor.collapse_shape %cst_67 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1084 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_493, %collapsed_494 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1085 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1084, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1084 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1086 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1085 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1087 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1086, %1085 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1088 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1087, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1089 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1088, %cst_66 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1090 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1089 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %1091 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1090, %1089 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %1092 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1091, %cst_65 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1093 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1092 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1094 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1093, %1087 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1095 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1094, %cst_64 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1096 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1095, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1095 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %1097 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1096, %1079 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %1098 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1097, %cst_63 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1099 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1098, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1098 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1100 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1099 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1101 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1100, %1099 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_495 = tensor.pad %1101 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_496 = tensor.collapse_shape %cst_62 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1102 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_495, %collapsed_496 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1103 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1102, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1102 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1104 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1103 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1105 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1104, %1103 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1106 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1105, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1107 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1106, %cst_61 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1108 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1107 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %1109 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1108, %1107 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %1110 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1109, %cst_60 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1111 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1110 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1112 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1111, %1105 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1112, %cst_59 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1113, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1113 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %1115 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1114, %1097 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %1116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1115, %cst_58 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1117 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1116, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1116 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1118 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1117 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1119 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1118, %1117 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_497 = tensor.pad %1119 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_498 = tensor.collapse_shape %cst_57 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1120 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_497, %collapsed_498 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1121 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1120, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1120 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1122 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1121 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1123 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1122, %1121 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1124 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1123, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1125 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1124, %cst_56 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1126 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1125 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %1127 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1126, %1125 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %1128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1127, %cst_55 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1129 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1128 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1130 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1129, %1123 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1130, %cst_54 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1132 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1131, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1131 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %1133 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1132, %1115 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %1134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1133, %cst_53 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1134, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1134 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1136 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1135 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1137 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1136, %1135 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_499 = tensor.pad %1137 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_500 = tensor.collapse_shape %cst_52 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1138 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_499, %collapsed_500 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1139 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1138, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1138 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1140 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1139 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1141 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1140, %1139 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1142 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1141, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1143 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1142, %cst_51 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1144 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1143 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %1145 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1144, %1143 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %1146 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1145, %cst_50 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1147 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1146 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1148 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1147, %1141 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1149 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1148, %cst_49 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1150 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1149, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1149 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %1151 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1150, %1133 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %1152 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1151, %cst_48 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1153 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1152, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1152 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1154 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1153 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1155 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1154, %1153 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_501 = tensor.pad %1155 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_502 = tensor.collapse_shape %cst_47 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1156 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_501, %collapsed_502 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1157 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1156, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1156 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1158 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1157 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1159 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1158, %1157 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1160 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1159, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1160, %cst_46 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1162 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1161 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %1163 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1162, %1161 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %1164 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1163, %cst_45 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1165 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1164 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1166 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1165, %1159 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1167 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1166, %cst_44 : tensor<1x2304x1x1xf32>, tensor<384x2304x1x1xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1168 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1167, %cst_341, %cst_340, %cst_340, %cst_341 : tensor<1x384x1x1xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1167 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x384x1x1xf32>
    %1169 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1168, %1151 : tensor<1x384x1x1xf32>, tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x384x1x1xf32>
    %1170 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1169, %cst_43 : tensor<1x384x1x1xf32>, tensor<2304x384x1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1171 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1170, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1170 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1172 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1171 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1173 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1172, %1171 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %padded_503 = tensor.pad %1173 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x2304x1x1xf32> to tensor<1x2304x3x3xf32>
    %collapsed_504 = tensor.collapse_shape %cst_42 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1174 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_503, %collapsed_504 : tensor<1x2304x3x3xf32>, tensor<2304x3x3xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1174, %cst_164, %cst_163, %cst_163, %cst_164 : tensor<1x2304x1x1xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1174 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x2304x1x1xf32>
    %1176 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1175 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1177 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1176, %1175 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1178 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1177, %723 : tensor<1x2304x1x1xf32>, tensor<1x1xf32>) outs(%734 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1179 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1178, %cst_41 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%745 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1180 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1179 : tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x96x1x1xf32>
    %1181 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1180, %1179 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%744 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x96x1x1xf32>
    %1182 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1181, %cst_40 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%749 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1183 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1182 : tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x2304x1x1xf32>
    %1184 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1183, %1177 : tensor<1x2304x1x1xf32>, tensor<1x2304x1x1xf32>) outs(%733 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x2304x1x1xf32>
    %1185 = tensor.empty() : tensor<1x640x1x1xf32>
    %1186 = linalg.fill ins(%cst_374 : f32) outs(%1185 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %1187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1184, %cst_39 : tensor<1x2304x1x1xf32>, tensor<640x2304x1x1xf32>) outs(%1186 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1188 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1187, %cst_38, %cst_37, %cst_37, %cst_38 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1187 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x640x1x1xf32>
    %1189 = tensor.empty() : tensor<1x3840x1x1xf32>
    %1190 = linalg.fill ins(%cst_374 : f32) outs(%1189 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1188, %cst_36 : tensor<1x640x1x1xf32>, tensor<3840x640x1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1191, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1191 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1193 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1192 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1194 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1193, %1192 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %padded_505 = tensor.pad %1194 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x3840x1x1xf32> to tensor<1x3840x3x3xf32>
    %collapsed_506 = tensor.collapse_shape %cst_33 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1195 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_505, %collapsed_506 : tensor<1x3840x3x3xf32>, tensor<3840x3x3xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1196 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1195, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1195 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1197 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1196 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1198 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1197, %1196 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1199 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1198, %723 : tensor<1x3840x1x1xf32>, tensor<1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1200 = tensor.empty() : tensor<1x160x1x1xf32>
    %1201 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32 : tensor<160xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x160x1x1xf32>
    %1202 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1199, %cst_31 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1201 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1203 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1202 : tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x160x1x1xf32>
    %1204 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1203, %1202 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x160x1x1xf32>
    %1205 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_34 : tensor<3840xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3840x1x1xf32>
    %1206 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1204, %cst_30 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1205 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1207 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1206 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1208 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1207, %1198 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1209 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1208, %cst_29 : tensor<1x3840x1x1xf32>, tensor<640x3840x1x1xf32>) outs(%1186 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1210 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1209, %cst_38, %cst_37, %cst_37, %cst_38 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1209 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x640x1x1xf32>
    %1211 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1210, %1188 : tensor<1x640x1x1xf32>, tensor<1x640x1x1xf32>) outs(%1185 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x640x1x1xf32>
    %1212 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1211, %cst_28 : tensor<1x640x1x1xf32>, tensor<3840x640x1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1213 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1212, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1212 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1214 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1213 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1215 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1214, %1213 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %padded_507 = tensor.pad %1215 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x3840x1x1xf32> to tensor<1x3840x3x3xf32>
    %collapsed_508 = tensor.collapse_shape %cst_27 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1216 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_507, %collapsed_508 : tensor<1x3840x3x3xf32>, tensor<3840x3x3xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1217 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1216, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1216 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1218 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1217 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1219 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1218, %1217 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1220 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1219, %723 : tensor<1x3840x1x1xf32>, tensor<1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1220, %cst_26 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1201 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1222 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1221 : tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x160x1x1xf32>
    %1223 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1222, %1221 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x160x1x1xf32>
    %1224 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1223, %cst_25 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1205 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1225 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1224 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1226 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1225, %1219 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1227 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1226, %cst_24 : tensor<1x3840x1x1xf32>, tensor<640x3840x1x1xf32>) outs(%1186 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1228 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1227, %cst_38, %cst_37, %cst_37, %cst_38 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1227 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x640x1x1xf32>
    %1229 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1228, %1211 : tensor<1x640x1x1xf32>, tensor<1x640x1x1xf32>) outs(%1185 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x640x1x1xf32>
    %1230 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1229, %cst_23 : tensor<1x640x1x1xf32>, tensor<3840x640x1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1231 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1230, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1230 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1232 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1231 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1233 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1232, %1231 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %padded_509 = tensor.pad %1233 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x3840x1x1xf32> to tensor<1x3840x3x3xf32>
    %collapsed_510 = tensor.collapse_shape %cst_22 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1234 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_509, %collapsed_510 : tensor<1x3840x3x3xf32>, tensor<3840x3x3xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1235 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1234, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1234 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1236 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1235 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1237 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1236, %1235 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1238 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1237, %723 : tensor<1x3840x1x1xf32>, tensor<1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1239 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1238, %cst_21 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1201 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1240 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1239 : tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x160x1x1xf32>
    %1241 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1240, %1239 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x160x1x1xf32>
    %1242 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1241, %cst_20 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1205 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1243 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1242 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1244 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1243, %1237 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1245 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1244, %cst_19 : tensor<1x3840x1x1xf32>, tensor<640x3840x1x1xf32>) outs(%1186 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1246 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1245, %cst_38, %cst_37, %cst_37, %cst_38 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1245 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x640x1x1xf32>
    %1247 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1246, %1229 : tensor<1x640x1x1xf32>, tensor<1x640x1x1xf32>) outs(%1185 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x640x1x1xf32>
    %1248 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1247, %cst_18 : tensor<1x640x1x1xf32>, tensor<3840x640x1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1249 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1248, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1248 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1250 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1249 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1251 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1250, %1249 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %padded_511 = tensor.pad %1251 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x3840x1x1xf32> to tensor<1x3840x3x3xf32>
    %collapsed_512 = tensor.collapse_shape %cst_17 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1252 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_511, %collapsed_512 : tensor<1x3840x3x3xf32>, tensor<3840x3x3xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1253 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1252, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1252 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1254 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1253 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1255 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1254, %1253 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1256 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1255, %723 : tensor<1x3840x1x1xf32>, tensor<1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1256, %cst_16 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1201 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1258 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1257 : tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x160x1x1xf32>
    %1259 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1258, %1257 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x160x1x1xf32>
    %1260 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1259, %cst_15 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1205 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1261 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1260 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1262 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1261, %1255 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1263 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1262, %cst_14 : tensor<1x3840x1x1xf32>, tensor<640x3840x1x1xf32>) outs(%1186 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1264 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1263, %cst_38, %cst_37, %cst_37, %cst_38 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1263 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x640x1x1xf32>
    %1265 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1264, %1247 : tensor<1x640x1x1xf32>, tensor<1x640x1x1xf32>) outs(%1185 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x640x1x1xf32>
    %1266 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1265, %cst_13 : tensor<1x640x1x1xf32>, tensor<3840x640x1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1267 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1266, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1266 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1268 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1267 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1269 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1268, %1267 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %padded_513 = tensor.pad %1269 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x3840x1x1xf32> to tensor<1x3840x3x3xf32>
    %collapsed_514 = tensor.collapse_shape %cst_12 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1270 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_513, %collapsed_514 : tensor<1x3840x3x3xf32>, tensor<3840x3x3xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1271 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1270, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1270 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1272 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1271 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1273 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1272, %1271 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1274 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1273, %723 : tensor<1x3840x1x1xf32>, tensor<1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1275 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1274, %cst_11 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1201 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1276 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1275 : tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x160x1x1xf32>
    %1277 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1276, %1275 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x160x1x1xf32>
    %1278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1277, %cst_10 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1205 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1279 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1278 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1280 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1279, %1273 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1281 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1280, %cst_9 : tensor<1x3840x1x1xf32>, tensor<640x3840x1x1xf32>) outs(%1186 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1281, %cst_38, %cst_37, %cst_37, %cst_38 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1281 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x640x1x1xf32>
    %1283 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1282, %1265 : tensor<1x640x1x1xf32>, tensor<1x640x1x1xf32>) outs(%1185 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x640x1x1xf32>
    %1284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1283, %cst_8 : tensor<1x640x1x1xf32>, tensor<3840x640x1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1285 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1284, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1284 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1286 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1285 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1287 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1286, %1285 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %padded_515 = tensor.pad %1287 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_374 : f32
    } : tensor<1x3840x1x1xf32> to tensor<1x3840x3x3xf32>
    %collapsed_516 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1288 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_515, %collapsed_516 : tensor<1x3840x3x3xf32>, tensor<3840x3x3xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1289 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1288, %cst_35, %cst_34, %cst_34, %cst_35 : tensor<1x3840x1x1xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1288 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x3840x1x1xf32>
    %1290 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1289 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1291 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1290, %1289 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1292 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1291, %723 : tensor<1x3840x1x1xf32>, tensor<1x1xf32>) outs(%1190 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1293 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1292, %cst_6 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1201 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1294 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1293 : tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x160x1x1xf32>
    %1295 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1294, %1293 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1200 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x160x1x1xf32>
    %1296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1295, %cst_5 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1205 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1297 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1296 : tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x3840x1x1xf32>
    %1298 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1297, %1291 : tensor<1x3840x1x1xf32>, tensor<1x3840x1x1xf32>) outs(%1189 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x3840x1x1xf32>
    %1299 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1298, %cst_4 : tensor<1x3840x1x1xf32>, tensor<640x3840x1x1xf32>) outs(%1186 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1300 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1299, %cst_38, %cst_37, %cst_37, %cst_38 : tensor<1x640x1x1xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1299 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x640x1x1xf32>
    %1301 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1300, %1283 : tensor<1x640x1x1xf32>, tensor<1x640x1x1xf32>) outs(%1185 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x640x1x1xf32>
    %1302 = tensor.empty() : tensor<1x1280x1x1xf32>
    %1303 = linalg.fill ins(%cst_374 : f32) outs(%1302 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %1304 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1301, %cst_3 : tensor<1x640x1x1xf32>, tensor<1280x640x1x1xf32>) outs(%1303 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %1305 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1304, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x1280x1x1xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>) outs(%1304 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %in_519: f32, %in_520: f32, %in_521: f32, %out: f32):
      %1315 = arith.truncf %cst_375 : f64 to f32
      %1316 = arith.addf %in_521, %1315 : f32
      %1317 = math.rsqrt %1316 : f32
      %1318 = arith.subf %in, %in_520 : f32
      %1319 = arith.mulf %1318, %1317 : f32
      %1320 = arith.mulf %1319, %in_518 : f32
      %1321 = arith.addf %1320, %in_519 : f32
      linalg.yield %1321 : f32
    } -> tensor<1x1280x1x1xf32>
    %1306 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1305 : tensor<1x1280x1x1xf32>) outs(%1302 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1315 = arith.negf %in : f32
      %1316 = math.exp %1315 : f32
      %1317 = arith.addf %1316, %cst_377 : f32
      %1318 = arith.divf %cst_377, %1317 : f32
      linalg.yield %1318 : f32
    } -> tensor<1x1280x1x1xf32>
    %1307 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1306, %1305 : tensor<1x1280x1x1xf32>, tensor<1x1280x1x1xf32>) outs(%1302 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.mulf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1280x1x1xf32>
    %1308 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1307, %723 : tensor<1x1280x1x1xf32>, tensor<1x1xf32>) outs(%1303 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %collapsed_517 = tensor.collapse_shape %1308 [[0], [1, 2, 3]] : tensor<1x1280x1x1xf32> into tensor<1x1280xf32>
    %1309 = tensor.empty() : tensor<1280x1000xf32>
    %1310 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1280xf32>) outs(%1309 : tensor<1280x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1280x1000xf32>
    %1311 = tensor.empty() : tensor<1x1000xf32>
    %1312 = linalg.fill ins(%cst_374 : f32) outs(%1311 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1313 = linalg.matmul ins(%collapsed_517, %1310 : tensor<1x1280xf32>, tensor<1280x1000xf32>) outs(%1312 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1314 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%1313, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%1311 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_518: f32, %out: f32):
      %1315 = arith.addf %in, %in_518 : f32
      linalg.yield %1315 : f32
    } -> tensor<1x1000xf32>
    return %1314 : tensor<1x1000xf32>
  }
}
