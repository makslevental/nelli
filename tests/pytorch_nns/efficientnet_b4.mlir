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
    %cst = arith.constant dense<-0.005388e+00> : tensor<1000x1792xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1792xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<1792xf32>
    %cst_3 = arith.constant dense<0.019278e+00> : tensor<1792x448x1x1xf32>
    %cst_4 = arith.constant dense<0.014116e+00> : tensor<448x2688x1x1xf32>
    %cst_5 = arith.constant dense<-0.001867e+00> : tensor<2688x112x1x1xf32>
    %cst_6 = arith.constant dense<-0.001237e+00> : tensor<112x2688x1x1xf32>
    %cst_7 = arith.constant dense<-0.005472e+00> : tensor<2688x1x3x3xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<2688xf32>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<2688xf32>
    %cst_10 = arith.constant dense<-0.005099e+00> : tensor<2688x448x1x1xf32>
    %cst_11 = arith.constant dense<0.000000e+00> : tensor<448xf32>
    %cst_12 = arith.constant dense<1.000000e+00> : tensor<448xf32>
    %cst_13 = arith.constant dense<0.005077e+00> : tensor<448x1632x1x1xf32>
    %cst_14 = arith.constant dense<-0.002515e+00> : tensor<1632x68x1x1xf32>
    %cst_15 = arith.constant dense<-0.009566e+00> : tensor<68x1632x1x1xf32>
    %cst_16 = arith.constant dense<0.005611e+00> : tensor<1632x1x3x3xf32>
    %cst_17 = arith.constant dense<-0.014654e+00> : tensor<1632x272x1x1xf32>
    %cst_18 = arith.constant dense<0.005563e+00> : tensor<272x1632x1x1xf32>
    %cst_19 = arith.constant dense<-0.000302e+00> : tensor<1632x68x1x1xf32>
    %cst_20 = arith.constant dense<-0.003879e+00> : tensor<68x1632x1x1xf32>
    %cst_21 = arith.constant dense<-0.019140e+00> : tensor<1632x1x5x5xf32>
    %cst_22 = arith.constant dense<-0.015353e+00> : tensor<1632x272x1x1xf32>
    %cst_23 = arith.constant dense<0.004351e+00> : tensor<272x1632x1x1xf32>
    %cst_24 = arith.constant dense<0.015689e+00> : tensor<1632x68x1x1xf32>
    %cst_25 = arith.constant dense<-0.011626e+00> : tensor<68x1632x1x1xf32>
    %cst_26 = arith.constant dense<0.014871e+00> : tensor<1632x1x5x5xf32>
    %cst_27 = arith.constant dense<-0.017632e+00> : tensor<1632x272x1x1xf32>
    %cst_28 = arith.constant dense<-0.012937e+00> : tensor<272x1632x1x1xf32>
    %cst_29 = arith.constant dense<0.009788e+00> : tensor<1632x68x1x1xf32>
    %cst_30 = arith.constant dense<-0.009691e+00> : tensor<68x1632x1x1xf32>
    %cst_31 = arith.constant dense<0.005732e+00> : tensor<1632x1x5x5xf32>
    %cst_32 = arith.constant dense<-0.009876e+00> : tensor<1632x272x1x1xf32>
    %cst_33 = arith.constant dense<0.002807e+00> : tensor<272x1632x1x1xf32>
    %cst_34 = arith.constant dense<-0.006749e+00> : tensor<1632x68x1x1xf32>
    %cst_35 = arith.constant dense<0.003732e+00> : tensor<68x1632x1x1xf32>
    %cst_36 = arith.constant dense<0.004897e+00> : tensor<1632x1x5x5xf32>
    %cst_37 = arith.constant dense<0.005068e+00> : tensor<1632x272x1x1xf32>
    %cst_38 = arith.constant dense<0.002413e+00> : tensor<272x1632x1x1xf32>
    %cst_39 = arith.constant dense<0.007450e+00> : tensor<1632x68x1x1xf32>
    %cst_40 = arith.constant dense<-0.006928e+00> : tensor<68x1632x1x1xf32>
    %cst_41 = arith.constant dense<0.010521e+00> : tensor<1632x1x5x5xf32>
    %cst_42 = arith.constant dense<-0.011014e+00> : tensor<1632x272x1x1xf32>
    %cst_43 = arith.constant dense<-0.001312e+00> : tensor<272x1632x1x1xf32>
    %cst_44 = arith.constant dense<0.015251e+00> : tensor<1632x68x1x1xf32>
    %cst_45 = arith.constant dense<-0.007227e+00> : tensor<68x1632x1x1xf32>
    %cst_46 = arith.constant dense<-0.002668e+00> : tensor<1632x1x5x5xf32>
    %cst_47 = arith.constant dense<-0.018333e+00> : tensor<1632x272x1x1xf32>
    %cst_48 = arith.constant dense<0.017716e+00> : tensor<272x1632x1x1xf32>
    %cst_49 = arith.constant dense<0.006341e+00> : tensor<1632x68x1x1xf32>
    %cst_50 = arith.constant dense<-0.019876e+00> : tensor<68x1632x1x1xf32>
    %cst_51 = arith.constant dense<0.000000e+00> : tensor<68xf32>
    %cst_52 = arith.constant dense<0.003130e+00> : tensor<1632x1x5x5xf32>
    %cst_53 = arith.constant dense<0.000000e+00> : tensor<1632xf32>
    %cst_54 = arith.constant dense<1.000000e+00> : tensor<1632xf32>
    %cst_55 = arith.constant dense<0.007220e+00> : tensor<1632x272x1x1xf32>
    %cst_56 = arith.constant dense<0.000000e+00> : tensor<272xf32>
    %cst_57 = arith.constant dense<1.000000e+00> : tensor<272xf32>
    %cst_58 = arith.constant dense<-0.000685e+00> : tensor<272x960x1x1xf32>
    %cst_59 = arith.constant dense<-0.008272e+00> : tensor<960x40x1x1xf32>
    %cst_60 = arith.constant dense<-0.007626e+00> : tensor<40x960x1x1xf32>
    %cst_61 = arith.constant dense<-0.018742e+00> : tensor<960x1x5x5xf32>
    %cst_62 = arith.constant dense<-0.002437e+00> : tensor<960x160x1x1xf32>
    %cst_63 = arith.constant dense<-0.006297e+00> : tensor<160x960x1x1xf32>
    %cst_64 = arith.constant dense<-0.000529e+00> : tensor<960x40x1x1xf32>
    %cst_65 = arith.constant dense<-0.011403e+00> : tensor<40x960x1x1xf32>
    %cst_66 = arith.constant dense<-0.006863e+00> : tensor<960x1x5x5xf32>
    %cst_67 = arith.constant dense<0.006647e+00> : tensor<960x160x1x1xf32>
    %cst_68 = arith.constant dense<0.000746e+00> : tensor<160x960x1x1xf32>
    %cst_69 = arith.constant dense<-0.002529e+00> : tensor<960x40x1x1xf32>
    %cst_70 = arith.constant dense<-0.014607e+00> : tensor<40x960x1x1xf32>
    %cst_71 = arith.constant dense<-0.000132e+00> : tensor<960x1x5x5xf32>
    %cst_72 = arith.constant dense<0.007222e+00> : tensor<960x160x1x1xf32>
    %cst_73 = arith.constant dense<-0.014818e+00> : tensor<160x960x1x1xf32>
    %cst_74 = arith.constant dense<0.008507e+00> : tensor<960x40x1x1xf32>
    %cst_75 = arith.constant dense<-0.006729e+00> : tensor<40x960x1x1xf32>
    %cst_76 = arith.constant dense<-0.002545e+00> : tensor<960x1x5x5xf32>
    %cst_77 = arith.constant dense<0.001153e+00> : tensor<960x160x1x1xf32>
    %cst_78 = arith.constant dense<0.001428e+00> : tensor<160x960x1x1xf32>
    %cst_79 = arith.constant dense<0.003237e+00> : tensor<960x40x1x1xf32>
    %cst_80 = arith.constant dense<0.003418e+00> : tensor<40x960x1x1xf32>
    %cst_81 = arith.constant dense<-0.004266e+00> : tensor<960x1x5x5xf32>
    %cst_82 = arith.constant dense<0.008995e+00> : tensor<960x160x1x1xf32>
    %cst_83 = arith.constant dense<0.008041e+00> : tensor<160x960x1x1xf32>
    %cst_84 = arith.constant dense<-0.023225e+00> : tensor<960x40x1x1xf32>
    %cst_85 = arith.constant dense<-0.016283e+00> : tensor<40x960x1x1xf32>
    %cst_86 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_87 = arith.constant dense<-0.014464e+00> : tensor<960x1x5x5xf32>
    %cst_88 = arith.constant dense<0.000000e+00> : tensor<960xf32>
    %cst_89 = arith.constant dense<1.000000e+00> : tensor<960xf32>
    %cst_90 = arith.constant dense<0.006244e+00> : tensor<960x160x1x1xf32>
    %cst_91 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_92 = arith.constant dense<1.000000e+00> : tensor<160xf32>
    %cst_93 = arith.constant dense<-0.000745e+00> : tensor<160x672x1x1xf32>
    %cst_94 = arith.constant dense<0.003252e+00> : tensor<672x28x1x1xf32>
    %cst_95 = arith.constant dense<-0.011491e+00> : tensor<28x672x1x1xf32>
    %cst_96 = arith.constant dense<-0.006641e+00> : tensor<672x1x5x5xf32>
    %cst_97 = arith.constant dense<0.007707e+00> : tensor<672x112x1x1xf32>
    %cst_98 = arith.constant dense<0.008052e+00> : tensor<112x672x1x1xf32>
    %cst_99 = arith.constant dense<-0.008209e+00> : tensor<672x28x1x1xf32>
    %cst_100 = arith.constant dense<-0.000773e+00> : tensor<28x672x1x1xf32>
    %cst_101 = arith.constant dense<-0.001666e+00> : tensor<672x1x3x3xf32>
    %cst_102 = arith.constant dense<-0.015716e+00> : tensor<672x112x1x1xf32>
    %cst_103 = arith.constant dense<-0.014656e+00> : tensor<112x672x1x1xf32>
    %cst_104 = arith.constant dense<0.003402e+00> : tensor<672x28x1x1xf32>
    %cst_105 = arith.constant dense<0.007643e+00> : tensor<28x672x1x1xf32>
    %cst_106 = arith.constant dense<-0.002490e+00> : tensor<672x1x3x3xf32>
    %cst_107 = arith.constant dense<0.019952e+00> : tensor<672x112x1x1xf32>
    %cst_108 = arith.constant dense<0.006996e+00> : tensor<112x672x1x1xf32>
    %cst_109 = arith.constant dense<-0.001188e+00> : tensor<672x28x1x1xf32>
    %cst_110 = arith.constant dense<0.017050e+00> : tensor<28x672x1x1xf32>
    %cst_111 = arith.constant dense<0.002778e+00> : tensor<672x1x3x3xf32>
    %cst_112 = arith.constant dense<-0.015662e+00> : tensor<672x112x1x1xf32>
    %cst_113 = arith.constant dense<0.030305e+00> : tensor<112x672x1x1xf32>
    %cst_114 = arith.constant dense<0.005166e+00> : tensor<672x28x1x1xf32>
    %cst_115 = arith.constant dense<0.011837e+00> : tensor<28x672x1x1xf32>
    %cst_116 = arith.constant dense<0.019153e+00> : tensor<672x1x3x3xf32>
    %cst_117 = arith.constant dense<0.001768e+00> : tensor<672x112x1x1xf32>
    %cst_118 = arith.constant dense<0.005628e+00> : tensor<112x672x1x1xf32>
    %cst_119 = arith.constant dense<0.019897e+00> : tensor<672x28x1x1xf32>
    %cst_120 = arith.constant dense<-0.014101e+00> : tensor<28x672x1x1xf32>
    %cst_121 = arith.constant dense<0.000000e+00> : tensor<28xf32>
    %cst_122 = arith.constant dense<-0.011837e+00> : tensor<672x1x3x3xf32>
    %cst_123 = arith.constant dense<0.000000e+00> : tensor<672xf32>
    %cst_124 = arith.constant dense<1.000000e+00> : tensor<672xf32>
    %cst_125 = arith.constant dense<-0.003807e+00> : tensor<672x112x1x1xf32>
    %cst_126 = arith.constant dense<0.000000e+00> : tensor<112xf32>
    %cst_127 = arith.constant dense<1.000000e+00> : tensor<112xf32>
    %cst_128 = arith.constant dense<0.007585e+00> : tensor<112x336x1x1xf32>
    %cst_129 = arith.constant dense<0.008200e+00> : tensor<336x14x1x1xf32>
    %cst_130 = arith.constant dense<0.006054e+00> : tensor<14x336x1x1xf32>
    %cst_131 = arith.constant dense<-0.008745e+00> : tensor<336x1x3x3xf32>
    %cst_132 = arith.constant dense<0.002757e+00> : tensor<336x56x1x1xf32>
    %cst_133 = arith.constant dense<0.004936e+00> : tensor<56x336x1x1xf32>
    %cst_134 = arith.constant dense<-0.001699e+00> : tensor<336x14x1x1xf32>
    %cst_135 = arith.constant dense<-0.000976e+00> : tensor<14x336x1x1xf32>
    %cst_136 = arith.constant dense<-0.015912e+00> : tensor<336x1x5x5xf32>
    %cst_137 = arith.constant dense<-0.004741e+00> : tensor<336x56x1x1xf32>
    %cst_138 = arith.constant dense<-0.010167e+00> : tensor<56x336x1x1xf32>
    %cst_139 = arith.constant dense<-0.006546e+00> : tensor<336x14x1x1xf32>
    %cst_140 = arith.constant dense<-0.004193e+00> : tensor<14x336x1x1xf32>
    %cst_141 = arith.constant dense<-0.003592e+00> : tensor<336x1x5x5xf32>
    %cst_142 = arith.constant dense<-0.009902e+00> : tensor<336x56x1x1xf32>
    %cst_143 = arith.constant dense<-0.010201e+00> : tensor<56x336x1x1xf32>
    %cst_144 = arith.constant dense<-0.000454e+00> : tensor<336x14x1x1xf32>
    %cst_145 = arith.constant dense<0.000294e+00> : tensor<14x336x1x1xf32>
    %cst_146 = arith.constant dense<0.000000e+00> : tensor<14xf32>
    %cst_147 = arith.constant dense<-0.002158e+00> : tensor<336x1x5x5xf32>
    %cst_148 = arith.constant dense<0.000000e+00> : tensor<336xf32>
    %cst_149 = arith.constant dense<1.000000e+00> : tensor<336xf32>
    %cst_150 = arith.constant dense<-0.013507e+00> : tensor<336x56x1x1xf32>
    %cst_151 = arith.constant dense<0.000000e+00> : tensor<56xf32>
    %cst_152 = arith.constant dense<1.000000e+00> : tensor<56xf32>
    %cst_153 = arith.constant dense<-0.002985e+00> : tensor<56x192x1x1xf32>
    %cst_154 = arith.constant dense<-0.002793e+00> : tensor<192x8x1x1xf32>
    %cst_155 = arith.constant dense<0.003788e+00> : tensor<8x192x1x1xf32>
    %cst_156 = arith.constant dense<-0.013328e+00> : tensor<192x1x5x5xf32>
    %cst_157 = arith.constant dense<-0.006604e+00> : tensor<192x32x1x1xf32>
    %cst_158 = arith.constant dense<-0.003513e+00> : tensor<32x192x1x1xf32>
    %cst_159 = arith.constant dense<-0.009596e+00> : tensor<192x8x1x1xf32>
    %cst_160 = arith.constant dense<0.000692e+00> : tensor<8x192x1x1xf32>
    %cst_161 = arith.constant dense<0.000345e+00> : tensor<192x1x3x3xf32>
    %cst_162 = arith.constant dense<0.018991e+00> : tensor<192x32x1x1xf32>
    %cst_163 = arith.constant dense<0.018911e+00> : tensor<32x192x1x1xf32>
    %cst_164 = arith.constant dense<0.008035e+00> : tensor<192x8x1x1xf32>
    %cst_165 = arith.constant dense<0.009802e+00> : tensor<8x192x1x1xf32>
    %cst_166 = arith.constant dense<-0.018076e+00> : tensor<192x1x3x3xf32>
    %cst_167 = arith.constant dense<0.014940e+00> : tensor<192x32x1x1xf32>
    %cst_168 = arith.constant dense<0.003033e+00> : tensor<32x192x1x1xf32>
    %cst_169 = arith.constant dense<0.003270e+00> : tensor<192x8x1x1xf32>
    %cst_170 = arith.constant dense<0.010502e+00> : tensor<8x192x1x1xf32>
    %cst_171 = arith.constant dense<0.000000e+00> : tensor<8xf32>
    %cst_172 = arith.constant dense<-0.010634e+00> : tensor<192x1x3x3xf32>
    %cst_173 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_174 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_175 = arith.constant dense<-0.002422e+00> : tensor<192x32x1x1xf32>
    %cst_176 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_177 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_178 = arith.constant dense<-0.000086e+00> : tensor<32x144x1x1xf32>
    %cst_179 = arith.constant dense<0.009202e+00> : tensor<144x6x1x1xf32>
    %cst_180 = arith.constant dense<-0.008001e+00> : tensor<6x144x1x1xf32>
    %cst_181 = arith.constant dense<0.001892e+00> : tensor<144x1x3x3xf32>
    %cst_182 = arith.constant dense<0.000000e+00> : tensor<144xf32>
    %cst_183 = arith.constant dense<1.000000e+00> : tensor<144xf32>
    %cst_184 = arith.constant dense<-0.002024e+00> : tensor<144x24x1x1xf32>
    %cst_185 = arith.constant dense<0.029818e+00> : tensor<24x24x1x1xf32>
    %cst_186 = arith.constant dense<0.003327e+00> : tensor<24x6x1x1xf32>
    %cst_187 = arith.constant dense<-0.007446e+00> : tensor<6x24x1x1xf32>
    %cst_188 = arith.constant dense<0.000000e+00> : tensor<6xf32>
    %cst_189 = arith.constant dense<0.014631e+00> : tensor<24x1x3x3xf32>
    %cst_190 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_191 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_192 = arith.constant dense<0.008916e+00> : tensor<24x48x1x1xf32>
    %cst_193 = arith.constant dense<0.009522e+00> : tensor<48x12x1x1xf32>
    %cst_194 = arith.constant dense<-0.003090e+00> : tensor<12x48x1x1xf32>
    %cst_195 = arith.constant dense<0.000000e+00> : tensor<12xf32>
    %cst_196 = arith.constant dense<0.022685e+00> : tensor<48x1x3x3xf32>
    %cst_197 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_198 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_199 = arith.constant dense<0.020867e+00> : tensor<48x3x3x3xf32>
    %cst_200 = arith.constant 0.000000e+00 : f32
    %cst_201 = arith.constant 1.000000e-05 : f64
    %cst_202 = arith.constant 2.560000e+02 : f32
    %cst_203 = arith.constant 6.400000e+01 : f32
    %cst_204 = arith.constant 1.600000e+01 : f32
    %cst_205 = arith.constant 4.000000e+00 : f32
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_206 = arith.constant 1.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x48x16x16xf32>
    %1 = linalg.fill ins(%cst_200 : f32) outs(%0 : tensor<1x48x16x16xf32>) -> tensor<1x48x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_199 : tensor<1x3x34x34xf32>, tensor<48x3x3x3xf32>) outs(%1 : tensor<1x48x16x16xf32>) -> tensor<1x48x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x48x16x16xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%2 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x48x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x48x16x16xf32>) outs(%0 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x48x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x48x16x16xf32>, tensor<1x48x16x16xf32>) outs(%0 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x48x16x16xf32>
    %padded_207 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x48x16x16xf32> to tensor<1x48x18x18xf32>
    %collapsed = tensor.collapse_shape %cst_196 [[0, 1], [2], [3]] : tensor<48x1x3x3xf32> into tensor<48x3x3xf32>
    %7 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_207, %collapsed : tensor<1x48x18x18xf32>, tensor<48x3x3xf32>) outs(%1 : tensor<1x48x16x16xf32>) -> tensor<1x48x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x48x16x16xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%7 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x48x16x16xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x48x16x16xf32>) outs(%0 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x48x16x16xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x48x16x16xf32>, tensor<1x48x16x16xf32>) outs(%0 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x48x16x16xf32>
    %11 = tensor.empty() : tensor<1x48x1x1xf32>
    %12 = linalg.fill ins(%cst_200 : f32) outs(%11 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %13 = tensor.empty() : tensor<16x16xf32>
    %14 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%10, %13 : tensor<1x48x16x16xf32>, tensor<16x16xf32>) outs(%12 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x48x1x1xf32>) outs(%11 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_202 : f32
      linalg.yield %681 : f32
    } -> tensor<1x48x1x1xf32>
    %16 = tensor.empty() : tensor<1x12x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_195 : tensor<12xf32>) outs(%16 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%15, %cst_194 : tensor<1x48x1x1xf32>, tensor<12x48x1x1xf32>) outs(%17 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x12x1x1xf32>) outs(%16 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x12x1x1xf32>
    %20 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %18 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%16 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x12x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_197 : tensor<48xf32>) outs(%11 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%20, %cst_193 : tensor<1x12x1x1xf32>, tensor<48x12x1x1xf32>) outs(%21 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x48x1x1xf32>) outs(%11 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x48x1x1xf32>
    %24 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %10 : tensor<1x48x1x1xf32>, tensor<1x48x16x16xf32>) outs(%0 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x48x16x16xf32>
    %25 = tensor.empty() : tensor<1x24x16x16xf32>
    %26 = linalg.fill ins(%cst_200 : f32) outs(%25 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_192 : tensor<1x48x16x16xf32>, tensor<24x48x1x1xf32>) outs(%26 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_191, %cst_190, %cst_190, %cst_191 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%27 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x24x16x16xf32>
    %padded_208 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x24x16x16xf32> to tensor<1x24x18x18xf32>
    %collapsed_209 = tensor.collapse_shape %cst_189 [[0, 1], [2], [3]] : tensor<24x1x3x3xf32> into tensor<24x3x3xf32>
    %29 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_208, %collapsed_209 : tensor<1x24x18x18xf32>, tensor<24x3x3xf32>) outs(%26 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_191, %cst_190, %cst_190, %cst_191 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%29 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x24x16x16xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x24x16x16xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %30 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x24x16x16xf32>
    %33 = tensor.empty() : tensor<1x24x1x1xf32>
    %34 = linalg.fill ins(%cst_200 : f32) outs(%33 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %35 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %13 : tensor<1x24x16x16xf32>, tensor<16x16xf32>) outs(%34 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_202 : f32
      linalg.yield %681 : f32
    } -> tensor<1x24x1x1xf32>
    %37 = tensor.empty() : tensor<1x6x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_188 : tensor<6xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x6x1x1xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%36, %cst_187 : tensor<1x24x1x1xf32>, tensor<6x24x1x1xf32>) outs(%38 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %40 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x6x1x1xf32>
    %41 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %39 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x6x1x1xf32>
    %42 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_190 : tensor<24xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x24x1x1xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_186 : tensor<1x6x1x1xf32>, tensor<24x6x1x1xf32>) outs(%42 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %44 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x24x1x1xf32>
    %45 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %32 : tensor<1x24x1x1xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x24x16x16xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_185 : tensor<1x24x16x16xf32>, tensor<24x24x1x1xf32>) outs(%26 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_191, %cst_190, %cst_190, %cst_191 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%46 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x24x16x16xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %28 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x24x16x16xf32>
    %49 = tensor.empty() : tensor<1x144x16x16xf32>
    %50 = linalg.fill ins(%cst_200 : f32) outs(%49 : tensor<1x144x16x16xf32>) -> tensor<1x144x16x16xf32>
    %51 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%48, %cst_184 : tensor<1x24x16x16xf32>, tensor<144x24x1x1xf32>) outs(%50 : tensor<1x144x16x16xf32>) -> tensor<1x144x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %52 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %cst_183, %cst_182, %cst_182, %cst_183 : tensor<1x144x16x16xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%51 : tensor<1x144x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x144x16x16xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x144x16x16xf32>) outs(%49 : tensor<1x144x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x144x16x16xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %52 : tensor<1x144x16x16xf32>, tensor<1x144x16x16xf32>) outs(%49 : tensor<1x144x16x16xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x144x16x16xf32>
    %padded_210 = tensor.pad %54 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x144x16x16xf32> to tensor<1x144x18x18xf32>
    %55 = tensor.empty() : tensor<1x144x8x8xf32>
    %56 = linalg.fill ins(%cst_200 : f32) outs(%55 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    %collapsed_211 = tensor.collapse_shape %cst_181 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %57 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_210, %collapsed_211 : tensor<1x144x18x18xf32>, tensor<144x3x3xf32>) outs(%56 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_183, %cst_182, %cst_182, %cst_183 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%57 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x144x8x8xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x144x8x8xf32>) outs(%55 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x144x8x8xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %58 : tensor<1x144x8x8xf32>, tensor<1x144x8x8xf32>) outs(%55 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x144x8x8xf32>
    %61 = tensor.empty() : tensor<1x144x1x1xf32>
    %62 = linalg.fill ins(%cst_200 : f32) outs(%61 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %63 = tensor.empty() : tensor<8x8xf32>
    %64 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%60, %63 : tensor<1x144x8x8xf32>, tensor<8x8xf32>) outs(%62 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %65 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x144x1x1xf32>) outs(%61 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_203 : f32
      linalg.yield %681 : f32
    } -> tensor<1x144x1x1xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%65, %cst_180 : tensor<1x144x1x1xf32>, tensor<6x144x1x1xf32>) outs(%38 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %67 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x6x1x1xf32>
    %68 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %66 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x6x1x1xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_182 : tensor<144xf32>) outs(%61 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x144x1x1xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%68, %cst_179 : tensor<1x6x1x1xf32>, tensor<144x6x1x1xf32>) outs(%69 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %71 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x144x1x1xf32>) outs(%61 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x144x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %60 : tensor<1x144x1x1xf32>, tensor<1x144x8x8xf32>) outs(%55 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x144x8x8xf32>
    %73 = tensor.empty() : tensor<1x32x8x8xf32>
    %74 = linalg.fill ins(%cst_200 : f32) outs(%73 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_178 : tensor<1x144x8x8xf32>, tensor<32x144x1x1xf32>) outs(%74 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_177, %cst_176, %cst_176, %cst_177 : tensor<1x32x8x8xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%75 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x32x8x8xf32>
    %77 = tensor.empty() : tensor<1x192x8x8xf32>
    %78 = linalg.fill ins(%cst_200 : f32) outs(%77 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%76, %cst_175 : tensor<1x32x8x8xf32>, tensor<192x32x1x1xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %80 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%79 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x192x8x8xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x8x8xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %80 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_212 = tensor.pad %82 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %collapsed_213 = tensor.collapse_shape %cst_172 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %83 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_212, %collapsed_213 : tensor<1x192x10x10xf32>, tensor<192x3x3xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%83 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x192x8x8xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x8x8xf32>
    %86 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %84 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x8x8xf32>
    %87 = tensor.empty() : tensor<1x192x1x1xf32>
    %88 = linalg.fill ins(%cst_200 : f32) outs(%87 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %89 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%86, %63 : tensor<1x192x8x8xf32>, tensor<8x8xf32>) outs(%88 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_203 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x1x1xf32>
    %91 = tensor.empty() : tensor<1x8x1x1xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_171 : tensor<8xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %93 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%90, %cst_170 : tensor<1x192x1x1xf32>, tensor<8x192x1x1xf32>) outs(%92 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %94 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x8x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %93 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x8x1x1xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_173 : tensor<192xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x1x1xf32>
    %97 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%95, %cst_169 : tensor<1x8x1x1xf32>, tensor<192x8x1x1xf32>) outs(%96 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %98 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %86 : tensor<1x192x1x1xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x8x8xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_168 : tensor<1x192x8x8xf32>, tensor<32x192x1x1xf32>) outs(%74 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_177, %cst_176, %cst_176, %cst_177 : tensor<1x32x8x8xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%100 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x32x8x8xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %76 : tensor<1x32x8x8xf32>, tensor<1x32x8x8xf32>) outs(%73 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x32x8x8xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_167 : tensor<1x32x8x8xf32>, tensor<192x32x1x1xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %104 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%103 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x192x8x8xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x8x8xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %104 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_214 = tensor.pad %106 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %collapsed_215 = tensor.collapse_shape %cst_166 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %107 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_214, %collapsed_215 : tensor<1x192x10x10xf32>, tensor<192x3x3xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %108 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%107 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x192x8x8xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x8x8xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %108 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x8x8xf32>
    %111 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %63 : tensor<1x192x8x8xf32>, tensor<8x8xf32>) outs(%88 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %112 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_203 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x1x1xf32>
    %113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%112, %cst_165 : tensor<1x192x1x1xf32>, tensor<8x192x1x1xf32>) outs(%92 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %114 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113 : tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x8x1x1xf32>
    %115 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %113 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x8x1x1xf32>
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%115, %cst_164 : tensor<1x8x1x1xf32>, tensor<192x8x1x1xf32>) outs(%96 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %117 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x1x1xf32>
    %118 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %110 : tensor<1x192x1x1xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x8x8xf32>
    %119 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%118, %cst_163 : tensor<1x192x8x8xf32>, tensor<32x192x1x1xf32>) outs(%74 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %120 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %cst_177, %cst_176, %cst_176, %cst_177 : tensor<1x32x8x8xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%119 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x32x8x8xf32>
    %121 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %102 : tensor<1x32x8x8xf32>, tensor<1x32x8x8xf32>) outs(%73 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x32x8x8xf32>
    %122 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%121, %cst_162 : tensor<1x32x8x8xf32>, tensor<192x32x1x1xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %123 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%122 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x192x8x8xf32>
    %124 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x8x8xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %123 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_216 = tensor.pad %125 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %collapsed_217 = tensor.collapse_shape %cst_161 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %126 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_216, %collapsed_217 : tensor<1x192x10x10xf32>, tensor<192x3x3xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %127 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%126 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x192x8x8xf32>
    %128 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x8x8xf32>
    %129 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %127 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x8x8xf32>
    %130 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%129, %63 : tensor<1x192x8x8xf32>, tensor<8x8xf32>) outs(%88 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %131 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_203 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x1x1xf32>
    %132 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%131, %cst_160 : tensor<1x192x1x1xf32>, tensor<8x192x1x1xf32>) outs(%92 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %133 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x8x1x1xf32>
    %134 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %132 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x8x1x1xf32>
    %135 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%134, %cst_159 : tensor<1x8x1x1xf32>, tensor<192x8x1x1xf32>) outs(%96 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %136 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x1x1xf32>
    %137 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %129 : tensor<1x192x1x1xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x8x8xf32>
    %138 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%137, %cst_158 : tensor<1x192x8x8xf32>, tensor<32x192x1x1xf32>) outs(%74 : tensor<1x32x8x8xf32>) -> tensor<1x32x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %139 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %cst_177, %cst_176, %cst_176, %cst_177 : tensor<1x32x8x8xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%138 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x32x8x8xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %121 : tensor<1x32x8x8xf32>, tensor<1x32x8x8xf32>) outs(%73 : tensor<1x32x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x32x8x8xf32>
    %141 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%140, %cst_157 : tensor<1x32x8x8xf32>, tensor<192x32x1x1xf32>) outs(%78 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%141 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x192x8x8xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x8x8xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %142 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%77 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_218 = tensor.pad %144 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x12x12xf32>
    %145 = tensor.empty() : tensor<1x192x4x4xf32>
    %146 = linalg.fill ins(%cst_200 : f32) outs(%145 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %collapsed_219 = tensor.collapse_shape %cst_156 [[0, 1], [2], [3]] : tensor<192x1x5x5xf32> into tensor<192x5x5xf32>
    %147 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_218, %collapsed_219 : tensor<1x192x12x12xf32>, tensor<192x5x5xf32>) outs(%146 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %148 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%147 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x192x4x4xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x192x4x4xf32>) outs(%145 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x4x4xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %148 : tensor<1x192x4x4xf32>, tensor<1x192x4x4xf32>) outs(%145 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x4x4xf32>
    %151 = tensor.empty() : tensor<4x4xf32>
    %152 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%150, %151 : tensor<1x192x4x4xf32>, tensor<4x4xf32>) outs(%88 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %153 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_204 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x1x1xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%153, %cst_155 : tensor<1x192x1x1xf32>, tensor<8x192x1x1xf32>) outs(%92 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %155 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x8x1x1xf32>
    %156 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %154 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%91 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x8x1x1xf32>
    %157 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%156, %cst_154 : tensor<1x8x1x1xf32>, tensor<192x8x1x1xf32>) outs(%96 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %158 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x192x1x1xf32>) outs(%87 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x192x1x1xf32>
    %159 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %150 : tensor<1x192x1x1xf32>, tensor<1x192x4x4xf32>) outs(%145 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x192x4x4xf32>
    %160 = tensor.empty() : tensor<1x56x4x4xf32>
    %161 = linalg.fill ins(%cst_200 : f32) outs(%160 : tensor<1x56x4x4xf32>) -> tensor<1x56x4x4xf32>
    %162 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%159, %cst_153 : tensor<1x192x4x4xf32>, tensor<56x192x1x1xf32>) outs(%161 : tensor<1x56x4x4xf32>) -> tensor<1x56x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %163 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %cst_152, %cst_151, %cst_151, %cst_152 : tensor<1x56x4x4xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>) outs(%162 : tensor<1x56x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x56x4x4xf32>
    %164 = tensor.empty() : tensor<1x336x4x4xf32>
    %165 = linalg.fill ins(%cst_200 : f32) outs(%164 : tensor<1x336x4x4xf32>) -> tensor<1x336x4x4xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%163, %cst_150 : tensor<1x56x4x4xf32>, tensor<336x56x1x1xf32>) outs(%165 : tensor<1x336x4x4xf32>) -> tensor<1x336x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %167 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %cst_149, %cst_148, %cst_148, %cst_149 : tensor<1x336x4x4xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>) outs(%166 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x336x4x4xf32>
    %168 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x4x4xf32>
    %169 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %167 : tensor<1x336x4x4xf32>, tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x4x4xf32>
    %padded_220 = tensor.pad %169 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x336x4x4xf32> to tensor<1x336x8x8xf32>
    %collapsed_221 = tensor.collapse_shape %cst_147 [[0, 1], [2], [3]] : tensor<336x1x5x5xf32> into tensor<336x5x5xf32>
    %170 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_220, %collapsed_221 : tensor<1x336x8x8xf32>, tensor<336x5x5xf32>) outs(%165 : tensor<1x336x4x4xf32>) -> tensor<1x336x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %171 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %cst_149, %cst_148, %cst_148, %cst_149 : tensor<1x336x4x4xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>) outs(%170 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x336x4x4xf32>
    %172 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x4x4xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %171 : tensor<1x336x4x4xf32>, tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x4x4xf32>
    %174 = tensor.empty() : tensor<1x336x1x1xf32>
    %175 = linalg.fill ins(%cst_200 : f32) outs(%174 : tensor<1x336x1x1xf32>) -> tensor<1x336x1x1xf32>
    %176 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%173, %151 : tensor<1x336x4x4xf32>, tensor<4x4xf32>) outs(%175 : tensor<1x336x1x1xf32>) -> tensor<1x336x1x1xf32>
    %177 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x336x1x1xf32>) outs(%174 : tensor<1x336x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_204 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x1x1xf32>
    %178 = tensor.empty() : tensor<1x14x1x1xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_146 : tensor<14xf32>) outs(%178 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x1x1xf32>
    %180 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%177, %cst_145 : tensor<1x336x1x1xf32>, tensor<14x336x1x1xf32>) outs(%179 : tensor<1x14x1x1xf32>) -> tensor<1x14x1x1xf32>
    %181 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x14x1x1xf32>) outs(%178 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x14x1x1xf32>
    %182 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %180 : tensor<1x14x1x1xf32>, tensor<1x14x1x1xf32>) outs(%178 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x14x1x1xf32>
    %183 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_148 : tensor<336xf32>) outs(%174 : tensor<1x336x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x336x1x1xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%182, %cst_144 : tensor<1x14x1x1xf32>, tensor<336x14x1x1xf32>) outs(%183 : tensor<1x336x1x1xf32>) -> tensor<1x336x1x1xf32>
    %185 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x336x1x1xf32>) outs(%174 : tensor<1x336x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %173 : tensor<1x336x1x1xf32>, tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x4x4xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%186, %cst_143 : tensor<1x336x4x4xf32>, tensor<56x336x1x1xf32>) outs(%161 : tensor<1x56x4x4xf32>) -> tensor<1x56x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %188 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_152, %cst_151, %cst_151, %cst_152 : tensor<1x56x4x4xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>) outs(%187 : tensor<1x56x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x56x4x4xf32>
    %189 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %163 : tensor<1x56x4x4xf32>, tensor<1x56x4x4xf32>) outs(%160 : tensor<1x56x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x56x4x4xf32>
    %190 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%189, %cst_142 : tensor<1x56x4x4xf32>, tensor<336x56x1x1xf32>) outs(%165 : tensor<1x336x4x4xf32>) -> tensor<1x336x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %191 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %cst_149, %cst_148, %cst_148, %cst_149 : tensor<1x336x4x4xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>) outs(%190 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x336x4x4xf32>
    %192 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x4x4xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %191 : tensor<1x336x4x4xf32>, tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x4x4xf32>
    %padded_222 = tensor.pad %193 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x336x4x4xf32> to tensor<1x336x8x8xf32>
    %collapsed_223 = tensor.collapse_shape %cst_141 [[0, 1], [2], [3]] : tensor<336x1x5x5xf32> into tensor<336x5x5xf32>
    %194 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_222, %collapsed_223 : tensor<1x336x8x8xf32>, tensor<336x5x5xf32>) outs(%165 : tensor<1x336x4x4xf32>) -> tensor<1x336x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_149, %cst_148, %cst_148, %cst_149 : tensor<1x336x4x4xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>) outs(%194 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x336x4x4xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x4x4xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %195 : tensor<1x336x4x4xf32>, tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x4x4xf32>
    %198 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%197, %151 : tensor<1x336x4x4xf32>, tensor<4x4xf32>) outs(%175 : tensor<1x336x1x1xf32>) -> tensor<1x336x1x1xf32>
    %199 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198 : tensor<1x336x1x1xf32>) outs(%174 : tensor<1x336x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_204 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x1x1xf32>
    %200 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%199, %cst_140 : tensor<1x336x1x1xf32>, tensor<14x336x1x1xf32>) outs(%179 : tensor<1x14x1x1xf32>) -> tensor<1x14x1x1xf32>
    %201 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x14x1x1xf32>) outs(%178 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x14x1x1xf32>
    %202 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %200 : tensor<1x14x1x1xf32>, tensor<1x14x1x1xf32>) outs(%178 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x14x1x1xf32>
    %203 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%202, %cst_139 : tensor<1x14x1x1xf32>, tensor<336x14x1x1xf32>) outs(%183 : tensor<1x336x1x1xf32>) -> tensor<1x336x1x1xf32>
    %204 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x336x1x1xf32>) outs(%174 : tensor<1x336x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x1x1xf32>
    %205 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %197 : tensor<1x336x1x1xf32>, tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x4x4xf32>
    %206 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%205, %cst_138 : tensor<1x336x4x4xf32>, tensor<56x336x1x1xf32>) outs(%161 : tensor<1x56x4x4xf32>) -> tensor<1x56x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %207 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %cst_152, %cst_151, %cst_151, %cst_152 : tensor<1x56x4x4xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>) outs(%206 : tensor<1x56x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x56x4x4xf32>
    %208 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %189 : tensor<1x56x4x4xf32>, tensor<1x56x4x4xf32>) outs(%160 : tensor<1x56x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x56x4x4xf32>
    %209 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%208, %cst_137 : tensor<1x56x4x4xf32>, tensor<336x56x1x1xf32>) outs(%165 : tensor<1x336x4x4xf32>) -> tensor<1x336x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %210 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209, %cst_149, %cst_148, %cst_148, %cst_149 : tensor<1x336x4x4xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>) outs(%209 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x336x4x4xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x4x4xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %210 : tensor<1x336x4x4xf32>, tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x4x4xf32>
    %padded_224 = tensor.pad %212 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x336x4x4xf32> to tensor<1x336x8x8xf32>
    %collapsed_225 = tensor.collapse_shape %cst_136 [[0, 1], [2], [3]] : tensor<336x1x5x5xf32> into tensor<336x5x5xf32>
    %213 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_224, %collapsed_225 : tensor<1x336x8x8xf32>, tensor<336x5x5xf32>) outs(%165 : tensor<1x336x4x4xf32>) -> tensor<1x336x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %214 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %cst_149, %cst_148, %cst_148, %cst_149 : tensor<1x336x4x4xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>) outs(%213 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x336x4x4xf32>
    %215 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x4x4xf32>
    %216 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %214 : tensor<1x336x4x4xf32>, tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x4x4xf32>
    %217 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%216, %151 : tensor<1x336x4x4xf32>, tensor<4x4xf32>) outs(%175 : tensor<1x336x1x1xf32>) -> tensor<1x336x1x1xf32>
    %218 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217 : tensor<1x336x1x1xf32>) outs(%174 : tensor<1x336x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_204 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x1x1xf32>
    %219 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%218, %cst_135 : tensor<1x336x1x1xf32>, tensor<14x336x1x1xf32>) outs(%179 : tensor<1x14x1x1xf32>) -> tensor<1x14x1x1xf32>
    %220 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x14x1x1xf32>) outs(%178 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x14x1x1xf32>
    %221 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %219 : tensor<1x14x1x1xf32>, tensor<1x14x1x1xf32>) outs(%178 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x14x1x1xf32>
    %222 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%221, %cst_134 : tensor<1x14x1x1xf32>, tensor<336x14x1x1xf32>) outs(%183 : tensor<1x336x1x1xf32>) -> tensor<1x336x1x1xf32>
    %223 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<1x336x1x1xf32>) outs(%174 : tensor<1x336x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %216 : tensor<1x336x1x1xf32>, tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x4x4xf32>
    %225 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%224, %cst_133 : tensor<1x336x4x4xf32>, tensor<56x336x1x1xf32>) outs(%161 : tensor<1x56x4x4xf32>) -> tensor<1x56x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %226 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %cst_152, %cst_151, %cst_151, %cst_152 : tensor<1x56x4x4xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>, tensor<56xf32>) outs(%225 : tensor<1x56x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x56x4x4xf32>
    %227 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %208 : tensor<1x56x4x4xf32>, tensor<1x56x4x4xf32>) outs(%160 : tensor<1x56x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x56x4x4xf32>
    %228 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%227, %cst_132 : tensor<1x56x4x4xf32>, tensor<336x56x1x1xf32>) outs(%165 : tensor<1x336x4x4xf32>) -> tensor<1x336x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %229 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %cst_149, %cst_148, %cst_148, %cst_149 : tensor<1x336x4x4xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>) outs(%228 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x336x4x4xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x4x4xf32>
    %231 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %229 : tensor<1x336x4x4xf32>, tensor<1x336x4x4xf32>) outs(%164 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x4x4xf32>
    %padded_226 = tensor.pad %231 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x336x4x4xf32> to tensor<1x336x6x6xf32>
    %232 = tensor.empty() : tensor<1x336x2x2xf32>
    %233 = linalg.fill ins(%cst_200 : f32) outs(%232 : tensor<1x336x2x2xf32>) -> tensor<1x336x2x2xf32>
    %collapsed_227 = tensor.collapse_shape %cst_131 [[0, 1], [2], [3]] : tensor<336x1x3x3xf32> into tensor<336x3x3xf32>
    %234 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_226, %collapsed_227 : tensor<1x336x6x6xf32>, tensor<336x3x3xf32>) outs(%233 : tensor<1x336x2x2xf32>) -> tensor<1x336x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %235 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %cst_149, %cst_148, %cst_148, %cst_149 : tensor<1x336x2x2xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>) outs(%234 : tensor<1x336x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x336x2x2xf32>
    %236 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x336x2x2xf32>) outs(%232 : tensor<1x336x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x2x2xf32>
    %237 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %235 : tensor<1x336x2x2xf32>, tensor<1x336x2x2xf32>) outs(%232 : tensor<1x336x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x2x2xf32>
    %238 = tensor.empty() : tensor<2x2xf32>
    %239 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%237, %238 : tensor<1x336x2x2xf32>, tensor<2x2xf32>) outs(%175 : tensor<1x336x1x1xf32>) -> tensor<1x336x1x1xf32>
    %240 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x336x1x1xf32>) outs(%174 : tensor<1x336x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x1x1xf32>
    %241 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%240, %cst_130 : tensor<1x336x1x1xf32>, tensor<14x336x1x1xf32>) outs(%179 : tensor<1x14x1x1xf32>) -> tensor<1x14x1x1xf32>
    %242 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x14x1x1xf32>) outs(%178 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x14x1x1xf32>
    %243 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %241 : tensor<1x14x1x1xf32>, tensor<1x14x1x1xf32>) outs(%178 : tensor<1x14x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x14x1x1xf32>
    %244 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%243, %cst_129 : tensor<1x14x1x1xf32>, tensor<336x14x1x1xf32>) outs(%183 : tensor<1x336x1x1xf32>) -> tensor<1x336x1x1xf32>
    %245 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x336x1x1xf32>) outs(%174 : tensor<1x336x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x336x1x1xf32>
    %246 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %237 : tensor<1x336x1x1xf32>, tensor<1x336x2x2xf32>) outs(%232 : tensor<1x336x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x336x2x2xf32>
    %247 = tensor.empty() : tensor<1x112x2x2xf32>
    %248 = linalg.fill ins(%cst_200 : f32) outs(%247 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    %249 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%246, %cst_128 : tensor<1x336x2x2xf32>, tensor<112x336x1x1xf32>) outs(%248 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %250 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %cst_127, %cst_126, %cst_126, %cst_127 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%249 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x112x2x2xf32>
    %251 = tensor.empty() : tensor<1x672x2x2xf32>
    %252 = linalg.fill ins(%cst_200 : f32) outs(%251 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    %253 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%250, %cst_125 : tensor<1x112x2x2xf32>, tensor<672x112x1x1xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %254 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%253 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %254 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %padded_228 = tensor.pad %256 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x672x2x2xf32> to tensor<1x672x4x4xf32>
    %collapsed_229 = tensor.collapse_shape %cst_122 [[0, 1], [2], [3]] : tensor<672x1x3x3xf32> into tensor<672x3x3xf32>
    %257 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_228, %collapsed_229 : tensor<1x672x4x4xf32>, tensor<672x3x3xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %258 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%257 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %259 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %258 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %261 = tensor.empty() : tensor<1x672x1x1xf32>
    %262 = linalg.fill ins(%cst_200 : f32) outs(%261 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %263 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %238 : tensor<1x672x2x2xf32>, tensor<2x2xf32>) outs(%262 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %264 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x1x1xf32>
    %265 = tensor.empty() : tensor<1x28x1x1xf32>
    %266 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_121 : tensor<28xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x1x1xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%264, %cst_120 : tensor<1x672x1x1xf32>, tensor<28x672x1x1xf32>) outs(%266 : tensor<1x28x1x1xf32>) -> tensor<1x28x1x1xf32>
    %268 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x28x1x1xf32>
    %269 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %267 : tensor<1x28x1x1xf32>, tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x28x1x1xf32>
    %270 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_123 : tensor<672xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x672x1x1xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%269, %cst_119 : tensor<1x28x1x1xf32>, tensor<672x28x1x1xf32>) outs(%270 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %272 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x1x1xf32>
    %273 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %260 : tensor<1x672x1x1xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %274 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%273, %cst_118 : tensor<1x672x2x2xf32>, tensor<112x672x1x1xf32>) outs(%248 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_127, %cst_126, %cst_126, %cst_127 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%274 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x112x2x2xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %250 : tensor<1x112x2x2xf32>, tensor<1x112x2x2xf32>) outs(%247 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x112x2x2xf32>
    %277 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%276, %cst_117 : tensor<1x112x2x2xf32>, tensor<672x112x1x1xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %278 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%277 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %279 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %278 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %padded_230 = tensor.pad %280 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x672x2x2xf32> to tensor<1x672x4x4xf32>
    %collapsed_231 = tensor.collapse_shape %cst_116 [[0, 1], [2], [3]] : tensor<672x1x3x3xf32> into tensor<672x3x3xf32>
    %281 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_230, %collapsed_231 : tensor<1x672x4x4xf32>, tensor<672x3x3xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%281 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %282 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %285 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%284, %238 : tensor<1x672x2x2xf32>, tensor<2x2xf32>) outs(%262 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %286 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x1x1xf32>
    %287 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %cst_115 : tensor<1x672x1x1xf32>, tensor<28x672x1x1xf32>) outs(%266 : tensor<1x28x1x1xf32>) -> tensor<1x28x1x1xf32>
    %288 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x28x1x1xf32>
    %289 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %287 : tensor<1x28x1x1xf32>, tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x28x1x1xf32>
    %290 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%289, %cst_114 : tensor<1x28x1x1xf32>, tensor<672x28x1x1xf32>) outs(%270 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x1x1xf32>
    %292 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %284 : tensor<1x672x1x1xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %293 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%292, %cst_113 : tensor<1x672x2x2xf32>, tensor<112x672x1x1xf32>) outs(%248 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %294 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %cst_127, %cst_126, %cst_126, %cst_127 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%293 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x112x2x2xf32>
    %295 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %276 : tensor<1x112x2x2xf32>, tensor<1x112x2x2xf32>) outs(%247 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x112x2x2xf32>
    %296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%295, %cst_112 : tensor<1x112x2x2xf32>, tensor<672x112x1x1xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %297 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%296 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %298 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %299 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %297 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %padded_232 = tensor.pad %299 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x672x2x2xf32> to tensor<1x672x4x4xf32>
    %collapsed_233 = tensor.collapse_shape %cst_111 [[0, 1], [2], [3]] : tensor<672x1x3x3xf32> into tensor<672x3x3xf32>
    %300 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_232, %collapsed_233 : tensor<1x672x4x4xf32>, tensor<672x3x3xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %301 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%300 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %302 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %301 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %304 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%303, %238 : tensor<1x672x2x2xf32>, tensor<2x2xf32>) outs(%262 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %305 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x1x1xf32>
    %306 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%305, %cst_110 : tensor<1x672x1x1xf32>, tensor<28x672x1x1xf32>) outs(%266 : tensor<1x28x1x1xf32>) -> tensor<1x28x1x1xf32>
    %307 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306 : tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x28x1x1xf32>
    %308 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %306 : tensor<1x28x1x1xf32>, tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x28x1x1xf32>
    %309 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%308, %cst_109 : tensor<1x28x1x1xf32>, tensor<672x28x1x1xf32>) outs(%270 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %310 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %303 : tensor<1x672x1x1xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %312 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%311, %cst_108 : tensor<1x672x2x2xf32>, tensor<112x672x1x1xf32>) outs(%248 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %313 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %cst_127, %cst_126, %cst_126, %cst_127 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%312 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x112x2x2xf32>
    %314 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %295 : tensor<1x112x2x2xf32>, tensor<1x112x2x2xf32>) outs(%247 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x112x2x2xf32>
    %315 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%314, %cst_107 : tensor<1x112x2x2xf32>, tensor<672x112x1x1xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %316 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%315 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %317 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %318 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %316 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %padded_234 = tensor.pad %318 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x672x2x2xf32> to tensor<1x672x4x4xf32>
    %collapsed_235 = tensor.collapse_shape %cst_106 [[0, 1], [2], [3]] : tensor<672x1x3x3xf32> into tensor<672x3x3xf32>
    %319 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_234, %collapsed_235 : tensor<1x672x4x4xf32>, tensor<672x3x3xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %320 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%319 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %321 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %322 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %320 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %323 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%322, %238 : tensor<1x672x2x2xf32>, tensor<2x2xf32>) outs(%262 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x1x1xf32>
    %325 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%324, %cst_105 : tensor<1x672x1x1xf32>, tensor<28x672x1x1xf32>) outs(%266 : tensor<1x28x1x1xf32>) -> tensor<1x28x1x1xf32>
    %326 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x28x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %325 : tensor<1x28x1x1xf32>, tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x28x1x1xf32>
    %328 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%327, %cst_104 : tensor<1x28x1x1xf32>, tensor<672x28x1x1xf32>) outs(%270 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %329 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x1x1xf32>
    %330 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %322 : tensor<1x672x1x1xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %331 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %cst_103 : tensor<1x672x2x2xf32>, tensor<112x672x1x1xf32>) outs(%248 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %332 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %cst_127, %cst_126, %cst_126, %cst_127 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%331 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x112x2x2xf32>
    %333 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %314 : tensor<1x112x2x2xf32>, tensor<1x112x2x2xf32>) outs(%247 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x112x2x2xf32>
    %334 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%333, %cst_102 : tensor<1x112x2x2xf32>, tensor<672x112x1x1xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %335 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%334 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %336 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %337 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %335 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %padded_236 = tensor.pad %337 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x672x2x2xf32> to tensor<1x672x4x4xf32>
    %collapsed_237 = tensor.collapse_shape %cst_101 [[0, 1], [2], [3]] : tensor<672x1x3x3xf32> into tensor<672x3x3xf32>
    %338 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_236, %collapsed_237 : tensor<1x672x4x4xf32>, tensor<672x3x3xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %339 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%338 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %340 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %341 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %339 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %342 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%341, %238 : tensor<1x672x2x2xf32>, tensor<2x2xf32>) outs(%262 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %343 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x1x1xf32>
    %344 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%343, %cst_100 : tensor<1x672x1x1xf32>, tensor<28x672x1x1xf32>) outs(%266 : tensor<1x28x1x1xf32>) -> tensor<1x28x1x1xf32>
    %345 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x28x1x1xf32>
    %346 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345, %344 : tensor<1x28x1x1xf32>, tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x28x1x1xf32>
    %347 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%346, %cst_99 : tensor<1x28x1x1xf32>, tensor<672x28x1x1xf32>) outs(%270 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %348 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %341 : tensor<1x672x1x1xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %350 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %cst_98 : tensor<1x672x2x2xf32>, tensor<112x672x1x1xf32>) outs(%248 : tensor<1x112x2x2xf32>) -> tensor<1x112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %351 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %cst_127, %cst_126, %cst_126, %cst_127 : tensor<1x112x2x2xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%350 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x112x2x2xf32>
    %352 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %333 : tensor<1x112x2x2xf32>, tensor<1x112x2x2xf32>) outs(%247 : tensor<1x112x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x112x2x2xf32>
    %353 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%352, %cst_97 : tensor<1x112x2x2xf32>, tensor<672x112x1x1xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %354 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%353 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %355 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %356 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %354 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %padded_238 = tensor.pad %356 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x672x2x2xf32> to tensor<1x672x6x6xf32>
    %collapsed_239 = tensor.collapse_shape %cst_96 [[0, 1], [2], [3]] : tensor<672x1x5x5xf32> into tensor<672x5x5xf32>
    %357 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_238, %collapsed_239 : tensor<1x672x6x6xf32>, tensor<672x5x5xf32>) outs(%252 : tensor<1x672x2x2xf32>) -> tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %358 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_124, %cst_123, %cst_123, %cst_124 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%357 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x672x2x2xf32>
    %359 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x2x2xf32>
    %360 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %358 : tensor<1x672x2x2xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %361 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%360, %238 : tensor<1x672x2x2xf32>, tensor<2x2xf32>) outs(%262 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %362 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x1x1xf32>
    %363 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%362, %cst_95 : tensor<1x672x1x1xf32>, tensor<28x672x1x1xf32>) outs(%266 : tensor<1x28x1x1xf32>) -> tensor<1x28x1x1xf32>
    %364 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363 : tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x28x1x1xf32>
    %365 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364, %363 : tensor<1x28x1x1xf32>, tensor<1x28x1x1xf32>) outs(%265 : tensor<1x28x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x28x1x1xf32>
    %366 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%365, %cst_94 : tensor<1x28x1x1xf32>, tensor<672x28x1x1xf32>) outs(%270 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %367 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366 : tensor<1x672x1x1xf32>) outs(%261 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x672x1x1xf32>
    %368 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %360 : tensor<1x672x1x1xf32>, tensor<1x672x2x2xf32>) outs(%251 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x672x2x2xf32>
    %369 = tensor.empty() : tensor<1x160x2x2xf32>
    %370 = linalg.fill ins(%cst_200 : f32) outs(%369 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    %371 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%368, %cst_93 : tensor<1x672x2x2xf32>, tensor<160x672x1x1xf32>) outs(%370 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %372 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%371 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x160x2x2xf32>
    %373 = tensor.empty() : tensor<1x960x2x2xf32>
    %374 = linalg.fill ins(%cst_200 : f32) outs(%373 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    %375 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%372, %cst_90 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%374 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %376 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%375 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x2x2xf32>
    %377 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376 : tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x2x2xf32>
    %378 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %376 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_240 = tensor.pad %378 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x6x6xf32>
    %collapsed_241 = tensor.collapse_shape %cst_87 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %379 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_240, %collapsed_241 : tensor<1x960x6x6xf32>, tensor<960x5x5xf32>) outs(%374 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %380 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%379 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x2x2xf32>
    %381 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380 : tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x2x2xf32>
    %382 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381, %380 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %383 = tensor.empty() : tensor<1x960x1x1xf32>
    %384 = linalg.fill ins(%cst_200 : f32) outs(%383 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %385 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%382, %238 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%384 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %386 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x1x1xf32>
    %387 = tensor.empty() : tensor<1x40x1x1xf32>
    %388 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_86 : tensor<40xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %389 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%386, %cst_85 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%388 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %390 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389 : tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x40x1x1xf32>
    %391 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390, %389 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x40x1x1xf32>
    %392 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_88 : tensor<960xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %393 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%391, %cst_84 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%392 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %394 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x1x1xf32>
    %395 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %382 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %396 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%395, %cst_83 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%370 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %397 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%396 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x160x2x2xf32>
    %398 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397, %372 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%369 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x160x2x2xf32>
    %399 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%398, %cst_82 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%374 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %400 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%399 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x2x2xf32>
    %401 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x2x2xf32>
    %402 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %400 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_242 = tensor.pad %402 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x6x6xf32>
    %collapsed_243 = tensor.collapse_shape %cst_81 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %403 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_242, %collapsed_243 : tensor<1x960x6x6xf32>, tensor<960x5x5xf32>) outs(%374 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %404 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%403 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x2x2xf32>
    %405 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404 : tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x2x2xf32>
    %406 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405, %404 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %407 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%406, %238 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%384 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %408 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x1x1xf32>
    %409 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%408, %cst_80 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%388 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %410 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409 : tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x40x1x1xf32>
    %411 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410, %409 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x40x1x1xf32>
    %412 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%411, %cst_79 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%392 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %413 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x1x1xf32>
    %414 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413, %406 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %415 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%414, %cst_78 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%370 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %416 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%415 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x160x2x2xf32>
    %417 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416, %398 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%369 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x160x2x2xf32>
    %418 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%417, %cst_77 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%374 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %419 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%418 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x2x2xf32>
    %420 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x2x2xf32>
    %421 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420, %419 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_244 = tensor.pad %421 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x6x6xf32>
    %collapsed_245 = tensor.collapse_shape %cst_76 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %422 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_244, %collapsed_245 : tensor<1x960x6x6xf32>, tensor<960x5x5xf32>) outs(%374 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %423 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%422 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x2x2xf32>
    %424 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x2x2xf32>
    %425 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424, %423 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %426 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%425, %238 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%384 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %427 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x1x1xf32>
    %428 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%427, %cst_75 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%388 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %429 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428 : tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x40x1x1xf32>
    %430 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429, %428 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x40x1x1xf32>
    %431 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%430, %cst_74 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%392 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %432 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x1x1xf32>
    %433 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432, %425 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %434 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%433, %cst_73 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%370 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %435 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%434 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x160x2x2xf32>
    %436 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %417 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%369 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x160x2x2xf32>
    %437 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%436, %cst_72 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%374 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %438 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%437, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%437 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x2x2xf32>
    %439 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438 : tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x2x2xf32>
    %440 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439, %438 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_246 = tensor.pad %440 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x6x6xf32>
    %collapsed_247 = tensor.collapse_shape %cst_71 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %441 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_246, %collapsed_247 : tensor<1x960x6x6xf32>, tensor<960x5x5xf32>) outs(%374 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %442 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%441 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x2x2xf32>
    %443 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442 : tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x2x2xf32>
    %444 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %442 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %445 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%444, %238 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%384 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %446 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x1x1xf32>
    %447 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%446, %cst_70 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%388 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %448 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447 : tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x40x1x1xf32>
    %449 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %447 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x40x1x1xf32>
    %450 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%449, %cst_69 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%392 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %451 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x1x1xf32>
    %452 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %444 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %453 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%452, %cst_68 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%370 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %454 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%453 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x160x2x2xf32>
    %455 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454, %436 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%369 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x160x2x2xf32>
    %456 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%455, %cst_67 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%374 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %457 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%456 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x2x2xf32>
    %458 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457 : tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x2x2xf32>
    %459 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %457 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_248 = tensor.pad %459 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x6x6xf32>
    %collapsed_249 = tensor.collapse_shape %cst_66 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %460 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_248, %collapsed_249 : tensor<1x960x6x6xf32>, tensor<960x5x5xf32>) outs(%374 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %461 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%460 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x2x2xf32>
    %462 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461 : tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x2x2xf32>
    %463 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462, %461 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %464 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%463, %238 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%384 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %465 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.divf %in, %cst_205 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x1x1xf32>
    %466 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%465, %cst_65 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%388 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %467 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466 : tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x40x1x1xf32>
    %468 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467, %466 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x40x1x1xf32>
    %469 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%468, %cst_64 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%392 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %470 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x1x1xf32>
    %471 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470, %463 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %472 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%471, %cst_63 : tensor<1x960x2x2xf32>, tensor<160x960x1x1xf32>) outs(%370 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %473 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472, %cst_92, %cst_91, %cst_91, %cst_92 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%472 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x160x2x2xf32>
    %474 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473, %455 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%369 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x160x2x2xf32>
    %475 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%474, %cst_62 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%374 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %476 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%475 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x2x2xf32>
    %477 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x2x2xf32>
    %478 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477, %476 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%373 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_250 = tensor.pad %478 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x6x6xf32>
    %collapsed_251 = tensor.collapse_shape %cst_61 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %479 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_250, %collapsed_251 : tensor<1x960x6x6xf32>, tensor<960x5x5xf32>) outs(%384 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %480 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479, %cst_89, %cst_88, %cst_88, %cst_89 : tensor<1x960x1x1xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%479 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x960x1x1xf32>
    %481 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x1x1xf32>
    %482 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481, %480 : tensor<1x960x1x1xf32>, tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x1x1xf32>
    %483 = tensor.empty() : tensor<1x1xf32>
    %484 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%482, %483 : tensor<1x960x1x1xf32>, tensor<1x1xf32>) outs(%384 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %485 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%484, %cst_60 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%388 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %486 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%485 : tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x40x1x1xf32>
    %487 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486, %485 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%387 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x40x1x1xf32>
    %488 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%487, %cst_59 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%392 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %489 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488 : tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x960x1x1xf32>
    %490 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489, %482 : tensor<1x960x1x1xf32>, tensor<1x960x1x1xf32>) outs(%383 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x960x1x1xf32>
    %491 = tensor.empty() : tensor<1x272x1x1xf32>
    %492 = linalg.fill ins(%cst_200 : f32) outs(%491 : tensor<1x272x1x1xf32>) -> tensor<1x272x1x1xf32>
    %493 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%490, %cst_58 : tensor<1x960x1x1xf32>, tensor<272x960x1x1xf32>) outs(%492 : tensor<1x272x1x1xf32>) -> tensor<1x272x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %494 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x272x1x1xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>) outs(%493 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x272x1x1xf32>
    %495 = tensor.empty() : tensor<1x1632x1x1xf32>
    %496 = linalg.fill ins(%cst_200 : f32) outs(%495 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %497 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%494, %cst_55 : tensor<1x272x1x1xf32>, tensor<1632x272x1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %498 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%497 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %499 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %500 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499, %498 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %padded_252 = tensor.pad %500 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1632x1x1xf32> to tensor<1x1632x5x5xf32>
    %collapsed_253 = tensor.collapse_shape %cst_52 [[0, 1], [2], [3]] : tensor<1632x1x5x5xf32> into tensor<1632x5x5xf32>
    %501 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_252, %collapsed_253 : tensor<1x1632x5x5xf32>, tensor<1632x5x5xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %502 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%501 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %503 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %504 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503, %502 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %505 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%504, %483 : tensor<1x1632x1x1xf32>, tensor<1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %506 = tensor.empty() : tensor<1x68x1x1xf32>
    %507 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_51 : tensor<68xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x68x1x1xf32>
    %508 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%505, %cst_50 : tensor<1x1632x1x1xf32>, tensor<68x1632x1x1xf32>) outs(%507 : tensor<1x68x1x1xf32>) -> tensor<1x68x1x1xf32>
    %509 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508 : tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x68x1x1xf32>
    %510 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509, %508 : tensor<1x68x1x1xf32>, tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x68x1x1xf32>
    %511 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_53 : tensor<1632xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1632x1x1xf32>
    %512 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%510, %cst_49 : tensor<1x68x1x1xf32>, tensor<1632x68x1x1xf32>) outs(%511 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %513 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %514 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513, %504 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %515 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%514, %cst_48 : tensor<1x1632x1x1xf32>, tensor<272x1632x1x1xf32>) outs(%492 : tensor<1x272x1x1xf32>) -> tensor<1x272x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %516 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x272x1x1xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>) outs(%515 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x272x1x1xf32>
    %517 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %494 : tensor<1x272x1x1xf32>, tensor<1x272x1x1xf32>) outs(%491 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x272x1x1xf32>
    %518 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%517, %cst_47 : tensor<1x272x1x1xf32>, tensor<1632x272x1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %519 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%518 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %520 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %521 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520, %519 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %padded_254 = tensor.pad %521 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1632x1x1xf32> to tensor<1x1632x5x5xf32>
    %collapsed_255 = tensor.collapse_shape %cst_46 [[0, 1], [2], [3]] : tensor<1632x1x5x5xf32> into tensor<1632x5x5xf32>
    %522 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_254, %collapsed_255 : tensor<1x1632x5x5xf32>, tensor<1632x5x5xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %523 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%522 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %524 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %525 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524, %523 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %526 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%525, %483 : tensor<1x1632x1x1xf32>, tensor<1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %527 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%526, %cst_45 : tensor<1x1632x1x1xf32>, tensor<68x1632x1x1xf32>) outs(%507 : tensor<1x68x1x1xf32>) -> tensor<1x68x1x1xf32>
    %528 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527 : tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x68x1x1xf32>
    %529 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528, %527 : tensor<1x68x1x1xf32>, tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x68x1x1xf32>
    %530 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%529, %cst_44 : tensor<1x68x1x1xf32>, tensor<1632x68x1x1xf32>) outs(%511 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %531 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %532 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531, %525 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %533 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%532, %cst_43 : tensor<1x1632x1x1xf32>, tensor<272x1632x1x1xf32>) outs(%492 : tensor<1x272x1x1xf32>) -> tensor<1x272x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %534 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x272x1x1xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>) outs(%533 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x272x1x1xf32>
    %535 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534, %517 : tensor<1x272x1x1xf32>, tensor<1x272x1x1xf32>) outs(%491 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x272x1x1xf32>
    %536 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%535, %cst_42 : tensor<1x272x1x1xf32>, tensor<1632x272x1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %537 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%536 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %538 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %539 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538, %537 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %padded_256 = tensor.pad %539 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1632x1x1xf32> to tensor<1x1632x5x5xf32>
    %collapsed_257 = tensor.collapse_shape %cst_41 [[0, 1], [2], [3]] : tensor<1632x1x5x5xf32> into tensor<1632x5x5xf32>
    %540 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_256, %collapsed_257 : tensor<1x1632x5x5xf32>, tensor<1632x5x5xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %541 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%540 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %542 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %543 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542, %541 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %544 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%543, %483 : tensor<1x1632x1x1xf32>, tensor<1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %545 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%544, %cst_40 : tensor<1x1632x1x1xf32>, tensor<68x1632x1x1xf32>) outs(%507 : tensor<1x68x1x1xf32>) -> tensor<1x68x1x1xf32>
    %546 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545 : tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x68x1x1xf32>
    %547 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %545 : tensor<1x68x1x1xf32>, tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x68x1x1xf32>
    %548 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%547, %cst_39 : tensor<1x68x1x1xf32>, tensor<1632x68x1x1xf32>) outs(%511 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %549 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %550 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549, %543 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %551 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%550, %cst_38 : tensor<1x1632x1x1xf32>, tensor<272x1632x1x1xf32>) outs(%492 : tensor<1x272x1x1xf32>) -> tensor<1x272x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %552 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x272x1x1xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>) outs(%551 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x272x1x1xf32>
    %553 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552, %535 : tensor<1x272x1x1xf32>, tensor<1x272x1x1xf32>) outs(%491 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x272x1x1xf32>
    %554 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%553, %cst_37 : tensor<1x272x1x1xf32>, tensor<1632x272x1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %555 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%554 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %556 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %557 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556, %555 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %padded_258 = tensor.pad %557 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1632x1x1xf32> to tensor<1x1632x5x5xf32>
    %collapsed_259 = tensor.collapse_shape %cst_36 [[0, 1], [2], [3]] : tensor<1632x1x5x5xf32> into tensor<1632x5x5xf32>
    %558 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_258, %collapsed_259 : tensor<1x1632x5x5xf32>, tensor<1632x5x5xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %559 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%558 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %560 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %561 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560, %559 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %562 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%561, %483 : tensor<1x1632x1x1xf32>, tensor<1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %563 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%562, %cst_35 : tensor<1x1632x1x1xf32>, tensor<68x1632x1x1xf32>) outs(%507 : tensor<1x68x1x1xf32>) -> tensor<1x68x1x1xf32>
    %564 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563 : tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x68x1x1xf32>
    %565 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564, %563 : tensor<1x68x1x1xf32>, tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x68x1x1xf32>
    %566 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%565, %cst_34 : tensor<1x68x1x1xf32>, tensor<1632x68x1x1xf32>) outs(%511 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %567 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %568 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567, %561 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %569 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%568, %cst_33 : tensor<1x1632x1x1xf32>, tensor<272x1632x1x1xf32>) outs(%492 : tensor<1x272x1x1xf32>) -> tensor<1x272x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %570 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%569, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x272x1x1xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>) outs(%569 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x272x1x1xf32>
    %571 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570, %553 : tensor<1x272x1x1xf32>, tensor<1x272x1x1xf32>) outs(%491 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x272x1x1xf32>
    %572 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%571, %cst_32 : tensor<1x272x1x1xf32>, tensor<1632x272x1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %573 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%572 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %574 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %575 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %573 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %padded_260 = tensor.pad %575 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1632x1x1xf32> to tensor<1x1632x5x5xf32>
    %collapsed_261 = tensor.collapse_shape %cst_31 [[0, 1], [2], [3]] : tensor<1632x1x5x5xf32> into tensor<1632x5x5xf32>
    %576 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_260, %collapsed_261 : tensor<1x1632x5x5xf32>, tensor<1632x5x5xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %577 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%576 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %578 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %579 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%578, %577 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %580 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%579, %483 : tensor<1x1632x1x1xf32>, tensor<1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %581 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%580, %cst_30 : tensor<1x1632x1x1xf32>, tensor<68x1632x1x1xf32>) outs(%507 : tensor<1x68x1x1xf32>) -> tensor<1x68x1x1xf32>
    %582 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581 : tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x68x1x1xf32>
    %583 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582, %581 : tensor<1x68x1x1xf32>, tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x68x1x1xf32>
    %584 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%583, %cst_29 : tensor<1x68x1x1xf32>, tensor<1632x68x1x1xf32>) outs(%511 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %585 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %586 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%585, %579 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %587 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%586, %cst_28 : tensor<1x1632x1x1xf32>, tensor<272x1632x1x1xf32>) outs(%492 : tensor<1x272x1x1xf32>) -> tensor<1x272x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %588 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x272x1x1xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>) outs(%587 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x272x1x1xf32>
    %589 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %571 : tensor<1x272x1x1xf32>, tensor<1x272x1x1xf32>) outs(%491 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x272x1x1xf32>
    %590 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%589, %cst_27 : tensor<1x272x1x1xf32>, tensor<1632x272x1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %591 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%590, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%590 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %592 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %593 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592, %591 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %padded_262 = tensor.pad %593 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1632x1x1xf32> to tensor<1x1632x5x5xf32>
    %collapsed_263 = tensor.collapse_shape %cst_26 [[0, 1], [2], [3]] : tensor<1632x1x5x5xf32> into tensor<1632x5x5xf32>
    %594 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_262, %collapsed_263 : tensor<1x1632x5x5xf32>, tensor<1632x5x5xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %595 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%594 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %596 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %597 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596, %595 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %598 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%597, %483 : tensor<1x1632x1x1xf32>, tensor<1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %599 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%598, %cst_25 : tensor<1x1632x1x1xf32>, tensor<68x1632x1x1xf32>) outs(%507 : tensor<1x68x1x1xf32>) -> tensor<1x68x1x1xf32>
    %600 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599 : tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x68x1x1xf32>
    %601 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%600, %599 : tensor<1x68x1x1xf32>, tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x68x1x1xf32>
    %602 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%601, %cst_24 : tensor<1x68x1x1xf32>, tensor<1632x68x1x1xf32>) outs(%511 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %603 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %604 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603, %597 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %605 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%604, %cst_23 : tensor<1x1632x1x1xf32>, tensor<272x1632x1x1xf32>) outs(%492 : tensor<1x272x1x1xf32>) -> tensor<1x272x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %606 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x272x1x1xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>) outs(%605 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x272x1x1xf32>
    %607 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606, %589 : tensor<1x272x1x1xf32>, tensor<1x272x1x1xf32>) outs(%491 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x272x1x1xf32>
    %608 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%607, %cst_22 : tensor<1x272x1x1xf32>, tensor<1632x272x1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %609 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%608, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%608 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %610 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610, %609 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %padded_264 = tensor.pad %611 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1632x1x1xf32> to tensor<1x1632x5x5xf32>
    %collapsed_265 = tensor.collapse_shape %cst_21 [[0, 1], [2], [3]] : tensor<1632x1x5x5xf32> into tensor<1632x5x5xf32>
    %612 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_264, %collapsed_265 : tensor<1x1632x5x5xf32>, tensor<1632x5x5xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %613 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%612, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%612 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %614 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %615 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614, %613 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %616 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%615, %483 : tensor<1x1632x1x1xf32>, tensor<1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %617 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%616, %cst_20 : tensor<1x1632x1x1xf32>, tensor<68x1632x1x1xf32>) outs(%507 : tensor<1x68x1x1xf32>) -> tensor<1x68x1x1xf32>
    %618 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%617 : tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x68x1x1xf32>
    %619 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %617 : tensor<1x68x1x1xf32>, tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x68x1x1xf32>
    %620 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%619, %cst_19 : tensor<1x68x1x1xf32>, tensor<1632x68x1x1xf32>) outs(%511 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %621 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %622 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621, %615 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %623 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%622, %cst_18 : tensor<1x1632x1x1xf32>, tensor<272x1632x1x1xf32>) outs(%492 : tensor<1x272x1x1xf32>) -> tensor<1x272x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %624 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%623, %cst_57, %cst_56, %cst_56, %cst_57 : tensor<1x272x1x1xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>, tensor<272xf32>) outs(%623 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x272x1x1xf32>
    %625 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624, %607 : tensor<1x272x1x1xf32>, tensor<1x272x1x1xf32>) outs(%491 : tensor<1x272x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x272x1x1xf32>
    %626 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%625, %cst_17 : tensor<1x272x1x1xf32>, tensor<1632x272x1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %627 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%626, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%626 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %628 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%627 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %629 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628, %627 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %padded_266 = tensor.pad %629 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x1632x1x1xf32> to tensor<1x1632x3x3xf32>
    %collapsed_267 = tensor.collapse_shape %cst_16 [[0, 1], [2], [3]] : tensor<1632x1x3x3xf32> into tensor<1632x3x3xf32>
    %630 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_266, %collapsed_267 : tensor<1x1632x3x3xf32>, tensor<1632x3x3xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %631 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%630, %cst_54, %cst_53, %cst_53, %cst_54 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%630 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1632x1x1xf32>
    %632 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %633 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%632, %631 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %634 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%633, %483 : tensor<1x1632x1x1xf32>, tensor<1x1xf32>) outs(%496 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %635 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%634, %cst_15 : tensor<1x1632x1x1xf32>, tensor<68x1632x1x1xf32>) outs(%507 : tensor<1x68x1x1xf32>) -> tensor<1x68x1x1xf32>
    %636 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%635 : tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x68x1x1xf32>
    %637 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %635 : tensor<1x68x1x1xf32>, tensor<1x68x1x1xf32>) outs(%506 : tensor<1x68x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x68x1x1xf32>
    %638 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%637, %cst_14 : tensor<1x68x1x1xf32>, tensor<1632x68x1x1xf32>) outs(%511 : tensor<1x1632x1x1xf32>) -> tensor<1x1632x1x1xf32>
    %639 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638 : tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1632x1x1xf32>
    %640 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639, %633 : tensor<1x1632x1x1xf32>, tensor<1x1632x1x1xf32>) outs(%495 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1632x1x1xf32>
    %641 = tensor.empty() : tensor<1x448x1x1xf32>
    %642 = linalg.fill ins(%cst_200 : f32) outs(%641 : tensor<1x448x1x1xf32>) -> tensor<1x448x1x1xf32>
    %643 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%640, %cst_13 : tensor<1x1632x1x1xf32>, tensor<448x1632x1x1xf32>) outs(%642 : tensor<1x448x1x1xf32>) -> tensor<1x448x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %644 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643, %cst_12, %cst_11, %cst_11, %cst_12 : tensor<1x448x1x1xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>) outs(%643 : tensor<1x448x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x448x1x1xf32>
    %645 = tensor.empty() : tensor<1x2688x1x1xf32>
    %646 = linalg.fill ins(%cst_200 : f32) outs(%645 : tensor<1x2688x1x1xf32>) -> tensor<1x2688x1x1xf32>
    %647 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%644, %cst_10 : tensor<1x448x1x1xf32>, tensor<2688x448x1x1xf32>) outs(%646 : tensor<1x2688x1x1xf32>) -> tensor<1x2688x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %648 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%647, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2688x1x1xf32>, tensor<2688xf32>, tensor<2688xf32>, tensor<2688xf32>, tensor<2688xf32>) outs(%647 : tensor<1x2688x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x2688x1x1xf32>
    %649 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%648 : tensor<1x2688x1x1xf32>) outs(%645 : tensor<1x2688x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x2688x1x1xf32>
    %650 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649, %648 : tensor<1x2688x1x1xf32>, tensor<1x2688x1x1xf32>) outs(%645 : tensor<1x2688x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x2688x1x1xf32>
    %padded_268 = tensor.pad %650 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_200 : f32
    } : tensor<1x2688x1x1xf32> to tensor<1x2688x3x3xf32>
    %collapsed_269 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<2688x1x3x3xf32> into tensor<2688x3x3xf32>
    %651 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_268, %collapsed_269 : tensor<1x2688x3x3xf32>, tensor<2688x3x3xf32>) outs(%646 : tensor<1x2688x1x1xf32>) -> tensor<1x2688x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %652 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2688x1x1xf32>, tensor<2688xf32>, tensor<2688xf32>, tensor<2688xf32>, tensor<2688xf32>) outs(%651 : tensor<1x2688x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x2688x1x1xf32>
    %653 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652 : tensor<1x2688x1x1xf32>) outs(%645 : tensor<1x2688x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x2688x1x1xf32>
    %654 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%653, %652 : tensor<1x2688x1x1xf32>, tensor<1x2688x1x1xf32>) outs(%645 : tensor<1x2688x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x2688x1x1xf32>
    %655 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%654, %483 : tensor<1x2688x1x1xf32>, tensor<1x1xf32>) outs(%646 : tensor<1x2688x1x1xf32>) -> tensor<1x2688x1x1xf32>
    %656 = tensor.empty() : tensor<1x112x1x1xf32>
    %657 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_126 : tensor<112xf32>) outs(%656 : tensor<1x112x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x112x1x1xf32>
    %658 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%655, %cst_6 : tensor<1x2688x1x1xf32>, tensor<112x2688x1x1xf32>) outs(%657 : tensor<1x112x1x1xf32>) -> tensor<1x112x1x1xf32>
    %659 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658 : tensor<1x112x1x1xf32>) outs(%656 : tensor<1x112x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x112x1x1xf32>
    %660 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%659, %658 : tensor<1x112x1x1xf32>, tensor<1x112x1x1xf32>) outs(%656 : tensor<1x112x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x112x1x1xf32>
    %661 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<2688xf32>) outs(%645 : tensor<1x2688x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2688x1x1xf32>
    %662 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%660, %cst_5 : tensor<1x112x1x1xf32>, tensor<2688x112x1x1xf32>) outs(%661 : tensor<1x2688x1x1xf32>) -> tensor<1x2688x1x1xf32>
    %663 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%662 : tensor<1x2688x1x1xf32>) outs(%645 : tensor<1x2688x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x2688x1x1xf32>
    %664 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663, %654 : tensor<1x2688x1x1xf32>, tensor<1x2688x1x1xf32>) outs(%645 : tensor<1x2688x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x2688x1x1xf32>
    %665 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%664, %cst_4 : tensor<1x2688x1x1xf32>, tensor<448x2688x1x1xf32>) outs(%642 : tensor<1x448x1x1xf32>) -> tensor<1x448x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %666 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%665, %cst_12, %cst_11, %cst_11, %cst_12 : tensor<1x448x1x1xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>) outs(%665 : tensor<1x448x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x448x1x1xf32>
    %667 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666, %644 : tensor<1x448x1x1xf32>, tensor<1x448x1x1xf32>) outs(%641 : tensor<1x448x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x448x1x1xf32>
    %668 = tensor.empty() : tensor<1x1792x1x1xf32>
    %669 = linalg.fill ins(%cst_200 : f32) outs(%668 : tensor<1x1792x1x1xf32>) -> tensor<1x1792x1x1xf32>
    %670 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%667, %cst_3 : tensor<1x448x1x1xf32>, tensor<1792x448x1x1xf32>) outs(%669 : tensor<1x1792x1x1xf32>) -> tensor<1x1792x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %671 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%670, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x1792x1x1xf32>, tensor<1792xf32>, tensor<1792xf32>, tensor<1792xf32>, tensor<1792xf32>) outs(%670 : tensor<1x1792x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %in_272: f32, %in_273: f32, %in_274: f32, %out: f32):
      %681 = arith.truncf %cst_201 : f64 to f32
      %682 = arith.addf %in_274, %681 : f32
      %683 = math.rsqrt %682 : f32
      %684 = arith.subf %in, %in_273 : f32
      %685 = arith.mulf %684, %683 : f32
      %686 = arith.mulf %685, %in_271 : f32
      %687 = arith.addf %686, %in_272 : f32
      linalg.yield %687 : f32
    } -> tensor<1x1792x1x1xf32>
    %672 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%671 : tensor<1x1792x1x1xf32>) outs(%668 : tensor<1x1792x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %681 = arith.negf %in : f32
      %682 = math.exp %681 : f32
      %683 = arith.addf %682, %cst_206 : f32
      %684 = arith.divf %cst_206, %683 : f32
      linalg.yield %684 : f32
    } -> tensor<1x1792x1x1xf32>
    %673 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672, %671 : tensor<1x1792x1x1xf32>, tensor<1x1792x1x1xf32>) outs(%668 : tensor<1x1792x1x1xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.mulf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1792x1x1xf32>
    %674 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%673, %483 : tensor<1x1792x1x1xf32>, tensor<1x1xf32>) outs(%669 : tensor<1x1792x1x1xf32>) -> tensor<1x1792x1x1xf32>
    %collapsed_270 = tensor.collapse_shape %674 [[0], [1, 2, 3]] : tensor<1x1792x1x1xf32> into tensor<1x1792xf32>
    %675 = tensor.empty() : tensor<1792x1000xf32>
    %676 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1792xf32>) outs(%675 : tensor<1792x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1792x1000xf32>
    %677 = tensor.empty() : tensor<1x1000xf32>
    %678 = linalg.fill ins(%cst_200 : f32) outs(%677 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %679 = linalg.matmul ins(%collapsed_270, %676 : tensor<1x1792xf32>, tensor<1792x1000xf32>) outs(%678 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %680 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%679, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%677 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_271: f32, %out: f32):
      %681 = arith.addf %in, %in_271 : f32
      linalg.yield %681 : f32
    } -> tensor<1x1000xf32>
    return %680 : tensor<1x1000xf32>
  }
}
