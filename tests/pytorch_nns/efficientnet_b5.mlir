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
    %cst = arith.constant dense<0.002219e+00> : tensor<1000x2048xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<2048xf32>
    %cst_3 = arith.constant dense<-0.012649e+00> : tensor<2048x512x1x1xf32>
    %cst_4 = arith.constant dense<-0.027015e+00> : tensor<512x3072x1x1xf32>
    %cst_5 = arith.constant dense<-0.010653e+00> : tensor<3072x128x1x1xf32>
    %cst_6 = arith.constant dense<0.012744e+00> : tensor<128x3072x1x1xf32>
    %cst_7 = arith.constant dense<-0.007809e+00> : tensor<3072x1x3x3xf32>
    %cst_8 = arith.constant dense<-0.002190e+00> : tensor<3072x512x1x1xf32>
    %cst_9 = arith.constant dense<0.002066e+00> : tensor<512x3072x1x1xf32>
    %cst_10 = arith.constant dense<0.009082e+00> : tensor<3072x128x1x1xf32>
    %cst_11 = arith.constant dense<-0.006428e+00> : tensor<128x3072x1x1xf32>
    %cst_12 = arith.constant dense<0.001424e+00> : tensor<3072x1x3x3xf32>
    %cst_13 = arith.constant dense<0.000000e+00> : tensor<3072xf32>
    %cst_14 = arith.constant dense<1.000000e+00> : tensor<3072xf32>
    %cst_15 = arith.constant dense<-0.016257e+00> : tensor<3072x512x1x1xf32>
    %cst_16 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_17 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_18 = arith.constant dense<0.013146e+00> : tensor<512x1824x1x1xf32>
    %cst_19 = arith.constant dense<-0.015719e+00> : tensor<1824x76x1x1xf32>
    %cst_20 = arith.constant dense<-0.010130e+00> : tensor<76x1824x1x1xf32>
    %cst_21 = arith.constant dense<0.014764e+00> : tensor<1824x1x3x3xf32>
    %cst_22 = arith.constant dense<-0.005395e+00> : tensor<1824x304x1x1xf32>
    %cst_23 = arith.constant dense<0.011342e+00> : tensor<304x1824x1x1xf32>
    %cst_24 = arith.constant dense<0.009631e+00> : tensor<1824x76x1x1xf32>
    %cst_25 = arith.constant dense<-0.000035e+00> : tensor<76x1824x1x1xf32>
    %cst_26 = arith.constant dense<-0.015577e+00> : tensor<1824x1x5x5xf32>
    %cst_27 = arith.constant dense<-0.007699e+00> : tensor<1824x304x1x1xf32>
    %cst_28 = arith.constant dense<0.014971e+00> : tensor<304x1824x1x1xf32>
    %cst_29 = arith.constant dense<0.008965e+00> : tensor<1824x76x1x1xf32>
    %cst_30 = arith.constant dense<0.002703e+00> : tensor<76x1824x1x1xf32>
    %cst_31 = arith.constant dense<0.029614e+00> : tensor<1824x1x5x5xf32>
    %cst_32 = arith.constant dense<0.001676e+00> : tensor<1824x304x1x1xf32>
    %cst_33 = arith.constant dense<-0.009801e+00> : tensor<304x1824x1x1xf32>
    %cst_34 = arith.constant dense<-0.005724e+00> : tensor<1824x76x1x1xf32>
    %cst_35 = arith.constant dense<0.001726e+00> : tensor<76x1824x1x1xf32>
    %cst_36 = arith.constant dense<-0.000503e+00> : tensor<1824x1x5x5xf32>
    %cst_37 = arith.constant dense<0.001864e+00> : tensor<1824x304x1x1xf32>
    %cst_38 = arith.constant dense<0.010036e+00> : tensor<304x1824x1x1xf32>
    %cst_39 = arith.constant dense<0.005560e+00> : tensor<1824x76x1x1xf32>
    %cst_40 = arith.constant dense<-0.018987e+00> : tensor<76x1824x1x1xf32>
    %cst_41 = arith.constant dense<0.000743e+00> : tensor<1824x1x5x5xf32>
    %cst_42 = arith.constant dense<0.006450e+00> : tensor<1824x304x1x1xf32>
    %cst_43 = arith.constant dense<0.007360e+00> : tensor<304x1824x1x1xf32>
    %cst_44 = arith.constant dense<0.013034e+00> : tensor<1824x76x1x1xf32>
    %cst_45 = arith.constant dense<-0.018944e+00> : tensor<76x1824x1x1xf32>
    %cst_46 = arith.constant dense<-0.010229e+00> : tensor<1824x1x5x5xf32>
    %cst_47 = arith.constant dense<-0.000637e+00> : tensor<1824x304x1x1xf32>
    %cst_48 = arith.constant dense<-0.012161e+00> : tensor<304x1824x1x1xf32>
    %cst_49 = arith.constant dense<-0.002068e+00> : tensor<1824x76x1x1xf32>
    %cst_50 = arith.constant dense<-0.019162e+00> : tensor<76x1824x1x1xf32>
    %cst_51 = arith.constant dense<0.002158e+00> : tensor<1824x1x5x5xf32>
    %cst_52 = arith.constant dense<-0.003300e+00> : tensor<1824x304x1x1xf32>
    %cst_53 = arith.constant dense<-0.011055e+00> : tensor<304x1824x1x1xf32>
    %cst_54 = arith.constant dense<-0.004121e+00> : tensor<1824x76x1x1xf32>
    %cst_55 = arith.constant dense<0.006083e+00> : tensor<76x1824x1x1xf32>
    %cst_56 = arith.constant dense<0.000366e+00> : tensor<1824x1x5x5xf32>
    %cst_57 = arith.constant dense<0.012217e+00> : tensor<1824x304x1x1xf32>
    %cst_58 = arith.constant dense<0.006909e+00> : tensor<304x1824x1x1xf32>
    %cst_59 = arith.constant dense<0.020493e+00> : tensor<1824x76x1x1xf32>
    %cst_60 = arith.constant dense<-0.009975e+00> : tensor<76x1824x1x1xf32>
    %cst_61 = arith.constant dense<0.000000e+00> : tensor<76xf32>
    %cst_62 = arith.constant dense<0.004138e+00> : tensor<1824x1x5x5xf32>
    %cst_63 = arith.constant dense<0.000000e+00> : tensor<1824xf32>
    %cst_64 = arith.constant dense<1.000000e+00> : tensor<1824xf32>
    %cst_65 = arith.constant dense<0.010346e+00> : tensor<1824x304x1x1xf32>
    %cst_66 = arith.constant dense<0.000000e+00> : tensor<304xf32>
    %cst_67 = arith.constant dense<1.000000e+00> : tensor<304xf32>
    %cst_68 = arith.constant dense<0.022726e+00> : tensor<304x1056x1x1xf32>
    %cst_69 = arith.constant dense<-0.015618e+00> : tensor<1056x44x1x1xf32>
    %cst_70 = arith.constant dense<-0.006363e+00> : tensor<44x1056x1x1xf32>
    %cst_71 = arith.constant dense<-0.004652e+00> : tensor<1056x1x5x5xf32>
    %cst_72 = arith.constant dense<-0.007365e+00> : tensor<1056x176x1x1xf32>
    %cst_73 = arith.constant dense<-0.000337e+00> : tensor<176x1056x1x1xf32>
    %cst_74 = arith.constant dense<-0.017616e+00> : tensor<1056x44x1x1xf32>
    %cst_75 = arith.constant dense<0.001077e+00> : tensor<44x1056x1x1xf32>
    %cst_76 = arith.constant dense<0.001350e+00> : tensor<1056x1x5x5xf32>
    %cst_77 = arith.constant dense<-0.012687e+00> : tensor<1056x176x1x1xf32>
    %cst_78 = arith.constant dense<0.017132e+00> : tensor<176x1056x1x1xf32>
    %cst_79 = arith.constant dense<0.003299e+00> : tensor<1056x44x1x1xf32>
    %cst_80 = arith.constant dense<0.020274e+00> : tensor<44x1056x1x1xf32>
    %cst_81 = arith.constant dense<0.005079e+00> : tensor<1056x1x5x5xf32>
    %cst_82 = arith.constant dense<0.004155e+00> : tensor<1056x176x1x1xf32>
    %cst_83 = arith.constant dense<-0.012766e+00> : tensor<176x1056x1x1xf32>
    %cst_84 = arith.constant dense<-0.011231e+00> : tensor<1056x44x1x1xf32>
    %cst_85 = arith.constant dense<0.012308e+00> : tensor<44x1056x1x1xf32>
    %cst_86 = arith.constant dense<0.001564e+00> : tensor<1056x1x5x5xf32>
    %cst_87 = arith.constant dense<0.005668e+00> : tensor<1056x176x1x1xf32>
    %cst_88 = arith.constant dense<0.002299e+00> : tensor<176x1056x1x1xf32>
    %cst_89 = arith.constant dense<0.001038e+00> : tensor<1056x44x1x1xf32>
    %cst_90 = arith.constant dense<-0.002080e+00> : tensor<44x1056x1x1xf32>
    %cst_91 = arith.constant dense<-0.006539e+00> : tensor<1056x1x5x5xf32>
    %cst_92 = arith.constant dense<0.004368e+00> : tensor<1056x176x1x1xf32>
    %cst_93 = arith.constant dense<-0.002726e+00> : tensor<176x1056x1x1xf32>
    %cst_94 = arith.constant dense<-0.003092e+00> : tensor<1056x44x1x1xf32>
    %cst_95 = arith.constant dense<0.008717e+00> : tensor<44x1056x1x1xf32>
    %cst_96 = arith.constant dense<-0.011423e+00> : tensor<1056x1x5x5xf32>
    %cst_97 = arith.constant dense<0.001010e+00> : tensor<1056x176x1x1xf32>
    %cst_98 = arith.constant dense<-0.013351e+00> : tensor<176x1056x1x1xf32>
    %cst_99 = arith.constant dense<-0.016789e+00> : tensor<1056x44x1x1xf32>
    %cst_100 = arith.constant dense<-0.005236e+00> : tensor<44x1056x1x1xf32>
    %cst_101 = arith.constant dense<0.000000e+00> : tensor<44xf32>
    %cst_102 = arith.constant dense<-0.010540e+00> : tensor<1056x1x5x5xf32>
    %cst_103 = arith.constant dense<0.000000e+00> : tensor<1056xf32>
    %cst_104 = arith.constant dense<1.000000e+00> : tensor<1056xf32>
    %cst_105 = arith.constant dense<-0.001003e+00> : tensor<1056x176x1x1xf32>
    %cst_106 = arith.constant dense<0.000000e+00> : tensor<176xf32>
    %cst_107 = arith.constant dense<1.000000e+00> : tensor<176xf32>
    %cst_108 = arith.constant dense<0.000475e+00> : tensor<176x768x1x1xf32>
    %cst_109 = arith.constant dense<-0.004688e+00> : tensor<768x32x1x1xf32>
    %cst_110 = arith.constant dense<0.002720e+00> : tensor<32x768x1x1xf32>
    %cst_111 = arith.constant dense<0.003546e+00> : tensor<768x1x5x5xf32>
    %cst_112 = arith.constant dense<0.003613e+00> : tensor<768x128x1x1xf32>
    %cst_113 = arith.constant dense<-0.002093e+00> : tensor<128x768x1x1xf32>
    %cst_114 = arith.constant dense<0.006896e+00> : tensor<768x32x1x1xf32>
    %cst_115 = arith.constant dense<0.003345e+00> : tensor<32x768x1x1xf32>
    %cst_116 = arith.constant dense<0.001746e+00> : tensor<768x1x3x3xf32>
    %cst_117 = arith.constant dense<0.006542e+00> : tensor<768x128x1x1xf32>
    %cst_118 = arith.constant dense<-0.010857e+00> : tensor<128x768x1x1xf32>
    %cst_119 = arith.constant dense<-0.007088e+00> : tensor<768x32x1x1xf32>
    %cst_120 = arith.constant dense<0.018279e+00> : tensor<32x768x1x1xf32>
    %cst_121 = arith.constant dense<0.030648e+00> : tensor<768x1x3x3xf32>
    %cst_122 = arith.constant dense<-0.011728e+00> : tensor<768x128x1x1xf32>
    %cst_123 = arith.constant dense<-0.010995e+00> : tensor<128x768x1x1xf32>
    %cst_124 = arith.constant dense<0.004255e+00> : tensor<768x32x1x1xf32>
    %cst_125 = arith.constant dense<-0.004749e+00> : tensor<32x768x1x1xf32>
    %cst_126 = arith.constant dense<0.006533e+00> : tensor<768x1x3x3xf32>
    %cst_127 = arith.constant dense<0.001621e+00> : tensor<768x128x1x1xf32>
    %cst_128 = arith.constant dense<0.000816e+00> : tensor<128x768x1x1xf32>
    %cst_129 = arith.constant dense<0.000901e+00> : tensor<768x32x1x1xf32>
    %cst_130 = arith.constant dense<-0.001209e+00> : tensor<32x768x1x1xf32>
    %cst_131 = arith.constant dense<0.016538e+00> : tensor<768x1x3x3xf32>
    %cst_132 = arith.constant dense<0.002324e+00> : tensor<768x128x1x1xf32>
    %cst_133 = arith.constant dense<0.015538e+00> : tensor<128x768x1x1xf32>
    %cst_134 = arith.constant dense<-0.016321e+00> : tensor<768x32x1x1xf32>
    %cst_135 = arith.constant dense<0.014356e+00> : tensor<32x768x1x1xf32>
    %cst_136 = arith.constant dense<0.019550e+00> : tensor<768x1x3x3xf32>
    %cst_137 = arith.constant dense<0.001931e+00> : tensor<768x128x1x1xf32>
    %cst_138 = arith.constant dense<-0.008401e+00> : tensor<128x768x1x1xf32>
    %cst_139 = arith.constant dense<-0.025841e+00> : tensor<768x32x1x1xf32>
    %cst_140 = arith.constant dense<-0.010529e+00> : tensor<32x768x1x1xf32>
    %cst_141 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_142 = arith.constant dense<-0.002395e+00> : tensor<768x1x3x3xf32>
    %cst_143 = arith.constant dense<0.000000e+00> : tensor<768xf32>
    %cst_144 = arith.constant dense<1.000000e+00> : tensor<768xf32>
    %cst_145 = arith.constant dense<0.007643e+00> : tensor<768x128x1x1xf32>
    %cst_146 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_147 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_148 = arith.constant dense<-0.009050e+00> : tensor<128x384x1x1xf32>
    %cst_149 = arith.constant dense<-0.011688e+00> : tensor<384x16x1x1xf32>
    %cst_150 = arith.constant dense<0.001261e+00> : tensor<16x384x1x1xf32>
    %cst_151 = arith.constant dense<0.003273e+00> : tensor<384x1x3x3xf32>
    %cst_152 = arith.constant dense<0.009908e+00> : tensor<384x64x1x1xf32>
    %cst_153 = arith.constant dense<-0.003712e+00> : tensor<64x384x1x1xf32>
    %cst_154 = arith.constant dense<-0.012170e+00> : tensor<384x16x1x1xf32>
    %cst_155 = arith.constant dense<-0.016992e+00> : tensor<16x384x1x1xf32>
    %cst_156 = arith.constant dense<0.003281e+00> : tensor<384x1x5x5xf32>
    %cst_157 = arith.constant dense<-0.000370e+00> : tensor<384x64x1x1xf32>
    %cst_158 = arith.constant dense<0.016578e+00> : tensor<64x384x1x1xf32>
    %cst_159 = arith.constant dense<0.000843e+00> : tensor<384x16x1x1xf32>
    %cst_160 = arith.constant dense<0.007153e+00> : tensor<16x384x1x1xf32>
    %cst_161 = arith.constant dense<-0.002989e+00> : tensor<384x1x5x5xf32>
    %cst_162 = arith.constant dense<-0.003213e+00> : tensor<384x64x1x1xf32>
    %cst_163 = arith.constant dense<0.038585e+00> : tensor<64x384x1x1xf32>
    %cst_164 = arith.constant dense<-0.012931e+00> : tensor<384x16x1x1xf32>
    %cst_165 = arith.constant dense<0.005626e+00> : tensor<16x384x1x1xf32>
    %cst_166 = arith.constant dense<-0.003001e+00> : tensor<384x1x5x5xf32>
    %cst_167 = arith.constant dense<-0.008023e+00> : tensor<384x64x1x1xf32>
    %cst_168 = arith.constant dense<0.002981e+00> : tensor<64x384x1x1xf32>
    %cst_169 = arith.constant dense<0.002003e+00> : tensor<384x16x1x1xf32>
    %cst_170 = arith.constant dense<-0.011121e+00> : tensor<16x384x1x1xf32>
    %cst_171 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_172 = arith.constant dense<-0.001266e+00> : tensor<384x1x5x5xf32>
    %cst_173 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_174 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_175 = arith.constant dense<0.003145e+00> : tensor<384x64x1x1xf32>
    %cst_176 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_177 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_178 = arith.constant dense<0.013859e+00> : tensor<64x240x1x1xf32>
    %cst_179 = arith.constant dense<0.005079e+00> : tensor<240x10x1x1xf32>
    %cst_180 = arith.constant dense<-0.003209e+00> : tensor<10x240x1x1xf32>
    %cst_181 = arith.constant dense<-0.004027e+00> : tensor<240x1x5x5xf32>
    %cst_182 = arith.constant dense<-0.000671e+00> : tensor<240x40x1x1xf32>
    %cst_183 = arith.constant dense<-0.001909e+00> : tensor<40x240x1x1xf32>
    %cst_184 = arith.constant dense<0.007571e+00> : tensor<240x10x1x1xf32>
    %cst_185 = arith.constant dense<-0.009071e+00> : tensor<10x240x1x1xf32>
    %cst_186 = arith.constant dense<0.008365e+00> : tensor<240x1x3x3xf32>
    %cst_187 = arith.constant dense<0.000699e+00> : tensor<240x40x1x1xf32>
    %cst_188 = arith.constant dense<0.013657e+00> : tensor<40x240x1x1xf32>
    %cst_189 = arith.constant dense<-0.003714e+00> : tensor<240x10x1x1xf32>
    %cst_190 = arith.constant dense<0.013776e+00> : tensor<10x240x1x1xf32>
    %cst_191 = arith.constant dense<0.003895e+00> : tensor<240x1x3x3xf32>
    %cst_192 = arith.constant dense<-0.008187e+00> : tensor<240x40x1x1xf32>
    %cst_193 = arith.constant dense<-0.017837e+00> : tensor<40x240x1x1xf32>
    %cst_194 = arith.constant dense<-0.003698e+00> : tensor<240x10x1x1xf32>
    %cst_195 = arith.constant dense<0.004129e+00> : tensor<10x240x1x1xf32>
    %cst_196 = arith.constant dense<-0.008118e+00> : tensor<240x1x3x3xf32>
    %cst_197 = arith.constant dense<-0.003245e+00> : tensor<240x40x1x1xf32>
    %cst_198 = arith.constant dense<0.000340e+00> : tensor<40x240x1x1xf32>
    %cst_199 = arith.constant dense<-0.016121e+00> : tensor<240x10x1x1xf32>
    %cst_200 = arith.constant dense<0.000269e+00> : tensor<10x240x1x1xf32>
    %cst_201 = arith.constant dense<0.000000e+00> : tensor<10xf32>
    %cst_202 = arith.constant dense<0.012832e+00> : tensor<240x1x3x3xf32>
    %cst_203 = arith.constant dense<0.000000e+00> : tensor<240xf32>
    %cst_204 = arith.constant dense<1.000000e+00> : tensor<240xf32>
    %cst_205 = arith.constant dense<-0.002365e+00> : tensor<240x40x1x1xf32>
    %cst_206 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_207 = arith.constant dense<1.000000e+00> : tensor<40xf32>
    %cst_208 = arith.constant dense<-0.005614e+00> : tensor<40x144x1x1xf32>
    %cst_209 = arith.constant dense<-0.003022e+00> : tensor<144x6x1x1xf32>
    %cst_210 = arith.constant dense<-0.000304e+00> : tensor<6x144x1x1xf32>
    %cst_211 = arith.constant dense<0.004850e+00> : tensor<144x1x3x3xf32>
    %cst_212 = arith.constant dense<0.000000e+00> : tensor<144xf32>
    %cst_213 = arith.constant dense<1.000000e+00> : tensor<144xf32>
    %cst_214 = arith.constant dense<-0.001498e+00> : tensor<144x24x1x1xf32>
    %cst_215 = arith.constant dense<-0.009659e+00> : tensor<24x24x1x1xf32>
    %cst_216 = arith.constant dense<0.010854e+00> : tensor<24x6x1x1xf32>
    %cst_217 = arith.constant dense<-0.007027e+00> : tensor<6x24x1x1xf32>
    %cst_218 = arith.constant dense<-0.014164e+00> : tensor<24x1x3x3xf32>
    %cst_219 = arith.constant dense<0.004970e+00> : tensor<24x24x1x1xf32>
    %cst_220 = arith.constant dense<-0.018629e+00> : tensor<24x6x1x1xf32>
    %cst_221 = arith.constant dense<-0.006082e+00> : tensor<6x24x1x1xf32>
    %cst_222 = arith.constant dense<0.000000e+00> : tensor<6xf32>
    %cst_223 = arith.constant dense<-0.010513e+00> : tensor<24x1x3x3xf32>
    %cst_224 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_225 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_226 = arith.constant dense<-0.002939e+00> : tensor<24x48x1x1xf32>
    %cst_227 = arith.constant dense<-0.001244e+00> : tensor<48x12x1x1xf32>
    %cst_228 = arith.constant dense<-0.013561e+00> : tensor<12x48x1x1xf32>
    %cst_229 = arith.constant dense<0.000000e+00> : tensor<12xf32>
    %cst_230 = arith.constant dense<0.003816e+00> : tensor<48x1x3x3xf32>
    %cst_231 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_232 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_233 = arith.constant dense<0.000303e+00> : tensor<48x3x3x3xf32>
    %cst_234 = arith.constant 0.000000e+00 : f32
    %cst_235 = arith.constant 1.000000e-03 : f64
    %cst_236 = arith.constant 2.560000e+02 : f32
    %cst_237 = arith.constant 6.400000e+01 : f32
    %cst_238 = arith.constant 1.600000e+01 : f32
    %cst_239 = arith.constant 4.000000e+00 : f32
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_240 = arith.constant 1.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x48x16x16xf32>
    %1 = linalg.fill ins(%cst_234 : f32) outs(%0 : tensor<1x48x16x16xf32>) -> tensor<1x48x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_233 : tensor<1x3x34x34xf32>, tensor<48x3x3x3xf32>) outs(%1 : tensor<1x48x16x16xf32>) -> tensor<1x48x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_232, %cst_231, %cst_231, %cst_232 : tensor<1x48x16x16xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%2 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x48x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x48x16x16xf32>) outs(%0 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x48x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x48x16x16xf32>, tensor<1x48x16x16xf32>) outs(%0 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x48x16x16xf32>
    %padded_241 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x48x16x16xf32> to tensor<1x48x18x18xf32>
    %collapsed = tensor.collapse_shape %cst_230 [[0, 1], [2], [3]] : tensor<48x1x3x3xf32> into tensor<48x3x3xf32>
    %7 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_241, %collapsed : tensor<1x48x18x18xf32>, tensor<48x3x3xf32>) outs(%1 : tensor<1x48x16x16xf32>) -> tensor<1x48x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_232, %cst_231, %cst_231, %cst_232 : tensor<1x48x16x16xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%7 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x48x16x16xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x48x16x16xf32>) outs(%0 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x48x16x16xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x48x16x16xf32>, tensor<1x48x16x16xf32>) outs(%0 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x48x16x16xf32>
    %11 = tensor.empty() : tensor<1x48x1x1xf32>
    %12 = linalg.fill ins(%cst_234 : f32) outs(%11 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %13 = tensor.empty() : tensor<16x16xf32>
    %14 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%10, %13 : tensor<1x48x16x16xf32>, tensor<16x16xf32>) outs(%12 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x48x1x1xf32>) outs(%11 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_236 : f32
      linalg.yield %808 : f32
    } -> tensor<1x48x1x1xf32>
    %16 = tensor.empty() : tensor<1x12x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_229 : tensor<12xf32>) outs(%16 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%15, %cst_228 : tensor<1x48x1x1xf32>, tensor<12x48x1x1xf32>) outs(%17 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x12x1x1xf32>) outs(%16 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x12x1x1xf32>
    %20 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %18 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%16 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x12x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_231 : tensor<48xf32>) outs(%11 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%20, %cst_227 : tensor<1x12x1x1xf32>, tensor<48x12x1x1xf32>) outs(%21 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x48x1x1xf32>) outs(%11 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x48x1x1xf32>
    %24 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %10 : tensor<1x48x1x1xf32>, tensor<1x48x16x16xf32>) outs(%0 : tensor<1x48x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x48x16x16xf32>
    %25 = tensor.empty() : tensor<1x24x16x16xf32>
    %26 = linalg.fill ins(%cst_234 : f32) outs(%25 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_226 : tensor<1x48x16x16xf32>, tensor<24x48x1x1xf32>) outs(%26 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_225, %cst_224, %cst_224, %cst_225 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%27 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x24x16x16xf32>
    %padded_242 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x24x16x16xf32> to tensor<1x24x18x18xf32>
    %collapsed_243 = tensor.collapse_shape %cst_223 [[0, 1], [2], [3]] : tensor<24x1x3x3xf32> into tensor<24x3x3xf32>
    %29 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_242, %collapsed_243 : tensor<1x24x18x18xf32>, tensor<24x3x3xf32>) outs(%26 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_225, %cst_224, %cst_224, %cst_225 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%29 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x24x16x16xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x24x16x16xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %30 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x24x16x16xf32>
    %33 = tensor.empty() : tensor<1x24x1x1xf32>
    %34 = linalg.fill ins(%cst_234 : f32) outs(%33 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %35 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %13 : tensor<1x24x16x16xf32>, tensor<16x16xf32>) outs(%34 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_236 : f32
      linalg.yield %808 : f32
    } -> tensor<1x24x1x1xf32>
    %37 = tensor.empty() : tensor<1x6x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_222 : tensor<6xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x6x1x1xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%36, %cst_221 : tensor<1x24x1x1xf32>, tensor<6x24x1x1xf32>) outs(%38 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %40 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x6x1x1xf32>
    %41 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %39 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x6x1x1xf32>
    %42 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_224 : tensor<24xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x24x1x1xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_220 : tensor<1x6x1x1xf32>, tensor<24x6x1x1xf32>) outs(%42 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %44 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x24x1x1xf32>
    %45 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %32 : tensor<1x24x1x1xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x24x16x16xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_219 : tensor<1x24x16x16xf32>, tensor<24x24x1x1xf32>) outs(%26 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_225, %cst_224, %cst_224, %cst_225 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%46 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x24x16x16xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %28 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x24x16x16xf32>
    %padded_244 = tensor.pad %48 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x24x16x16xf32> to tensor<1x24x18x18xf32>
    %collapsed_245 = tensor.collapse_shape %cst_218 [[0, 1], [2], [3]] : tensor<24x1x3x3xf32> into tensor<24x3x3xf32>
    %49 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_244, %collapsed_245 : tensor<1x24x18x18xf32>, tensor<24x3x3xf32>) outs(%26 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %50 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %cst_225, %cst_224, %cst_224, %cst_225 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%49 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x24x16x16xf32>
    %51 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50 : tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x24x16x16xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %50 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x24x16x16xf32>
    %53 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%52, %13 : tensor<1x24x16x16xf32>, tensor<16x16xf32>) outs(%34 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %54 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_236 : f32
      linalg.yield %808 : f32
    } -> tensor<1x24x1x1xf32>
    %55 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_217 : tensor<1x24x1x1xf32>, tensor<6x24x1x1xf32>) outs(%38 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %56 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x6x1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %55 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x6x1x1xf32>
    %58 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%57, %cst_216 : tensor<1x6x1x1xf32>, tensor<24x6x1x1xf32>) outs(%42 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %59 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x24x1x1xf32>) outs(%33 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x24x1x1xf32>
    %60 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %52 : tensor<1x24x1x1xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x24x16x16xf32>
    %61 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%60, %cst_215 : tensor<1x24x16x16xf32>, tensor<24x24x1x1xf32>) outs(%26 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %62 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %cst_225, %cst_224, %cst_224, %cst_225 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%61 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x24x16x16xf32>
    %63 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %48 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%25 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x24x16x16xf32>
    %64 = tensor.empty() : tensor<1x144x16x16xf32>
    %65 = linalg.fill ins(%cst_234 : f32) outs(%64 : tensor<1x144x16x16xf32>) -> tensor<1x144x16x16xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%63, %cst_214 : tensor<1x24x16x16xf32>, tensor<144x24x1x1xf32>) outs(%65 : tensor<1x144x16x16xf32>) -> tensor<1x144x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_213, %cst_212, %cst_212, %cst_213 : tensor<1x144x16x16xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%66 : tensor<1x144x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x144x16x16xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x144x16x16xf32>) outs(%64 : tensor<1x144x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x144x16x16xf32>
    %69 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %67 : tensor<1x144x16x16xf32>, tensor<1x144x16x16xf32>) outs(%64 : tensor<1x144x16x16xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x144x16x16xf32>
    %padded_246 = tensor.pad %69 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x144x16x16xf32> to tensor<1x144x18x18xf32>
    %70 = tensor.empty() : tensor<1x144x8x8xf32>
    %71 = linalg.fill ins(%cst_234 : f32) outs(%70 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    %collapsed_247 = tensor.collapse_shape %cst_211 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %72 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_246, %collapsed_247 : tensor<1x144x18x18xf32>, tensor<144x3x3xf32>) outs(%71 : tensor<1x144x8x8xf32>) -> tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %73 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_213, %cst_212, %cst_212, %cst_213 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%72 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x144x8x8xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x144x8x8xf32>) outs(%70 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x144x8x8xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %73 : tensor<1x144x8x8xf32>, tensor<1x144x8x8xf32>) outs(%70 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x144x8x8xf32>
    %76 = tensor.empty() : tensor<1x144x1x1xf32>
    %77 = linalg.fill ins(%cst_234 : f32) outs(%76 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %78 = tensor.empty() : tensor<8x8xf32>
    %79 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%75, %78 : tensor<1x144x8x8xf32>, tensor<8x8xf32>) outs(%77 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %80 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79 : tensor<1x144x1x1xf32>) outs(%76 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_237 : f32
      linalg.yield %808 : f32
    } -> tensor<1x144x1x1xf32>
    %81 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%80, %cst_210 : tensor<1x144x1x1xf32>, tensor<6x144x1x1xf32>) outs(%38 : tensor<1x6x1x1xf32>) -> tensor<1x6x1x1xf32>
    %82 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x6x1x1xf32>
    %83 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %81 : tensor<1x6x1x1xf32>, tensor<1x6x1x1xf32>) outs(%37 : tensor<1x6x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x6x1x1xf32>
    %84 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_212 : tensor<144xf32>) outs(%76 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x144x1x1xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%83, %cst_209 : tensor<1x6x1x1xf32>, tensor<144x6x1x1xf32>) outs(%84 : tensor<1x144x1x1xf32>) -> tensor<1x144x1x1xf32>
    %86 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85 : tensor<1x144x1x1xf32>) outs(%76 : tensor<1x144x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x144x1x1xf32>
    %87 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %75 : tensor<1x144x1x1xf32>, tensor<1x144x8x8xf32>) outs(%70 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x144x8x8xf32>
    %88 = tensor.empty() : tensor<1x40x8x8xf32>
    %89 = linalg.fill ins(%cst_234 : f32) outs(%88 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    %90 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%87, %cst_208 : tensor<1x144x8x8xf32>, tensor<40x144x1x1xf32>) outs(%89 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %91 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %cst_207, %cst_206, %cst_206, %cst_207 : tensor<1x40x8x8xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%90 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x40x8x8xf32>
    %92 = tensor.empty() : tensor<1x240x8x8xf32>
    %93 = linalg.fill ins(%cst_234 : f32) outs(%92 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    %94 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%91, %cst_205 : tensor<1x40x8x8xf32>, tensor<240x40x1x1xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %95 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%94 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x240x8x8xf32>
    %96 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x8x8xf32>
    %97 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %95 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %padded_248 = tensor.pad %97 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x240x8x8xf32> to tensor<1x240x10x10xf32>
    %collapsed_249 = tensor.collapse_shape %cst_202 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %98 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_248, %collapsed_249 : tensor<1x240x10x10xf32>, tensor<240x3x3xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %99 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%98 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x240x8x8xf32>
    %100 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x8x8xf32>
    %101 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %99 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %102 = tensor.empty() : tensor<1x240x1x1xf32>
    %103 = linalg.fill ins(%cst_234 : f32) outs(%102 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %104 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%101, %78 : tensor<1x240x8x8xf32>, tensor<8x8xf32>) outs(%103 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %105 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_237 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x1x1xf32>
    %106 = tensor.empty() : tensor<1x10x1x1xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_201 : tensor<10xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x10x1x1xf32>
    %108 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%105, %cst_200 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%107 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %109 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x10x1x1xf32>
    %110 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %108 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x10x1x1xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_203 : tensor<240xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x240x1x1xf32>
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %cst_199 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%111 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %113 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x1x1xf32>
    %114 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %101 : tensor<1x240x1x1xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %115 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%114, %cst_198 : tensor<1x240x8x8xf32>, tensor<40x240x1x1xf32>) outs(%89 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %116 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %cst_207, %cst_206, %cst_206, %cst_207 : tensor<1x40x8x8xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%115 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x40x8x8xf32>
    %117 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %91 : tensor<1x40x8x8xf32>, tensor<1x40x8x8xf32>) outs(%88 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x40x8x8xf32>
    %118 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%117, %cst_197 : tensor<1x40x8x8xf32>, tensor<240x40x1x1xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %119 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%118 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x240x8x8xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x8x8xf32>
    %121 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %119 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %padded_250 = tensor.pad %121 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x240x8x8xf32> to tensor<1x240x10x10xf32>
    %collapsed_251 = tensor.collapse_shape %cst_196 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %122 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_250, %collapsed_251 : tensor<1x240x10x10xf32>, tensor<240x3x3xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %123 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%122 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x240x8x8xf32>
    %124 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x8x8xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %123 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %126 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%125, %78 : tensor<1x240x8x8xf32>, tensor<8x8xf32>) outs(%103 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %127 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_237 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x1x1xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%127, %cst_195 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%107 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %129 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x10x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %128 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x10x1x1xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%130, %cst_194 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%111 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %132 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x1x1xf32>
    %133 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %125 : tensor<1x240x1x1xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%133, %cst_193 : tensor<1x240x8x8xf32>, tensor<40x240x1x1xf32>) outs(%89 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_207, %cst_206, %cst_206, %cst_207 : tensor<1x40x8x8xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%134 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x40x8x8xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %117 : tensor<1x40x8x8xf32>, tensor<1x40x8x8xf32>) outs(%88 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x40x8x8xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%136, %cst_192 : tensor<1x40x8x8xf32>, tensor<240x40x1x1xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%137 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x240x8x8xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x8x8xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %138 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %padded_252 = tensor.pad %140 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x240x8x8xf32> to tensor<1x240x10x10xf32>
    %collapsed_253 = tensor.collapse_shape %cst_191 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %141 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_252, %collapsed_253 : tensor<1x240x10x10xf32>, tensor<240x3x3xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%141 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x240x8x8xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x8x8xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %142 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %145 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%144, %78 : tensor<1x240x8x8xf32>, tensor<8x8xf32>) outs(%103 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %146 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_237 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x1x1xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%146, %cst_190 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%107 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x10x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %147 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x10x1x1xf32>
    %150 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%149, %cst_189 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%111 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %151 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x1x1xf32>
    %152 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %144 : tensor<1x240x1x1xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %153 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%152, %cst_188 : tensor<1x240x8x8xf32>, tensor<40x240x1x1xf32>) outs(%89 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %154 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %cst_207, %cst_206, %cst_206, %cst_207 : tensor<1x40x8x8xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%153 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x40x8x8xf32>
    %155 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %136 : tensor<1x40x8x8xf32>, tensor<1x40x8x8xf32>) outs(%88 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x40x8x8xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%155, %cst_187 : tensor<1x40x8x8xf32>, tensor<240x40x1x1xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %157 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%156 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x240x8x8xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x8x8xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %157 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %padded_254 = tensor.pad %159 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x240x8x8xf32> to tensor<1x240x10x10xf32>
    %collapsed_255 = tensor.collapse_shape %cst_186 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %160 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_254, %collapsed_255 : tensor<1x240x10x10xf32>, tensor<240x3x3xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %161 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%160 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x240x8x8xf32>
    %162 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x8x8xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %161 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %164 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%163, %78 : tensor<1x240x8x8xf32>, tensor<8x8xf32>) outs(%103 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %165 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_237 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x1x1xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%165, %cst_185 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%107 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %167 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x10x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %166 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x10x1x1xf32>
    %169 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%168, %cst_184 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%111 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x1x1xf32>
    %171 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %163 : tensor<1x240x1x1xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %172 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%171, %cst_183 : tensor<1x240x8x8xf32>, tensor<40x240x1x1xf32>) outs(%89 : tensor<1x40x8x8xf32>) -> tensor<1x40x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %173 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %cst_207, %cst_206, %cst_206, %cst_207 : tensor<1x40x8x8xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%172 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x40x8x8xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %155 : tensor<1x40x8x8xf32>, tensor<1x40x8x8xf32>) outs(%88 : tensor<1x40x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x40x8x8xf32>
    %175 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%174, %cst_182 : tensor<1x40x8x8xf32>, tensor<240x40x1x1xf32>) outs(%93 : tensor<1x240x8x8xf32>) -> tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %176 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%175 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x240x8x8xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x8x8xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %176 : tensor<1x240x8x8xf32>, tensor<1x240x8x8xf32>) outs(%92 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x8x8xf32>
    %padded_256 = tensor.pad %178 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x240x8x8xf32> to tensor<1x240x12x12xf32>
    %179 = tensor.empty() : tensor<1x240x4x4xf32>
    %180 = linalg.fill ins(%cst_234 : f32) outs(%179 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    %collapsed_257 = tensor.collapse_shape %cst_181 [[0, 1], [2], [3]] : tensor<240x1x5x5xf32> into tensor<240x5x5xf32>
    %181 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_256, %collapsed_257 : tensor<1x240x12x12xf32>, tensor<240x5x5xf32>) outs(%180 : tensor<1x240x4x4xf32>) -> tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %182 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%181 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x240x4x4xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<1x240x4x4xf32>) outs(%179 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x4x4xf32>
    %184 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183, %182 : tensor<1x240x4x4xf32>, tensor<1x240x4x4xf32>) outs(%179 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x4x4xf32>
    %185 = tensor.empty() : tensor<4x4xf32>
    %186 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%184, %185 : tensor<1x240x4x4xf32>, tensor<4x4xf32>) outs(%103 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %187 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_238 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x1x1xf32>
    %188 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%187, %cst_180 : tensor<1x240x1x1xf32>, tensor<10x240x1x1xf32>) outs(%107 : tensor<1x10x1x1xf32>) -> tensor<1x10x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x10x1x1xf32>
    %190 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %188 : tensor<1x10x1x1xf32>, tensor<1x10x1x1xf32>) outs(%106 : tensor<1x10x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x10x1x1xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %cst_179 : tensor<1x10x1x1xf32>, tensor<240x10x1x1xf32>) outs(%111 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %192 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x240x1x1xf32>) outs(%102 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x240x1x1xf32>
    %193 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %184 : tensor<1x240x1x1xf32>, tensor<1x240x4x4xf32>) outs(%179 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x240x4x4xf32>
    %194 = tensor.empty() : tensor<1x64x4x4xf32>
    %195 = linalg.fill ins(%cst_234 : f32) outs(%194 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    %196 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%193, %cst_178 : tensor<1x240x4x4xf32>, tensor<64x240x1x1xf32>) outs(%195 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %197 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %cst_177, %cst_176, %cst_176, %cst_177 : tensor<1x64x4x4xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%196 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x64x4x4xf32>
    %198 = tensor.empty() : tensor<1x384x4x4xf32>
    %199 = linalg.fill ins(%cst_234 : f32) outs(%198 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    %200 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%197, %cst_175 : tensor<1x64x4x4xf32>, tensor<384x64x1x1xf32>) outs(%199 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %201 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%200 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x384x4x4xf32>
    %202 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x4x4xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %201 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %padded_258 = tensor.pad %203 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x384x4x4xf32> to tensor<1x384x8x8xf32>
    %collapsed_259 = tensor.collapse_shape %cst_172 [[0, 1], [2], [3]] : tensor<384x1x5x5xf32> into tensor<384x5x5xf32>
    %204 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_258, %collapsed_259 : tensor<1x384x8x8xf32>, tensor<384x5x5xf32>) outs(%199 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %205 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%204 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x384x4x4xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x4x4xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %205 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %208 = tensor.empty() : tensor<1x384x1x1xf32>
    %209 = linalg.fill ins(%cst_234 : f32) outs(%208 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %210 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%207, %185 : tensor<1x384x4x4xf32>, tensor<4x4xf32>) outs(%209 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %211 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x384x1x1xf32>) outs(%208 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_238 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x1x1xf32>
    %212 = tensor.empty() : tensor<1x16x1x1xf32>
    %213 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_171 : tensor<16xf32>) outs(%212 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x1x1xf32>
    %214 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%211, %cst_170 : tensor<1x384x1x1xf32>, tensor<16x384x1x1xf32>) outs(%213 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %215 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x16x1x1xf32>) outs(%212 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x16x1x1xf32>
    %216 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %214 : tensor<1x16x1x1xf32>, tensor<1x16x1x1xf32>) outs(%212 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x16x1x1xf32>
    %217 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_173 : tensor<384xf32>) outs(%208 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x1x1xf32>
    %218 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%216, %cst_169 : tensor<1x16x1x1xf32>, tensor<384x16x1x1xf32>) outs(%217 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %219 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x384x1x1xf32>) outs(%208 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x1x1xf32>
    %220 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %207 : tensor<1x384x1x1xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%220, %cst_168 : tensor<1x384x4x4xf32>, tensor<64x384x1x1xf32>) outs(%195 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %222 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %cst_177, %cst_176, %cst_176, %cst_177 : tensor<1x64x4x4xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%221 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x64x4x4xf32>
    %223 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %197 : tensor<1x64x4x4xf32>, tensor<1x64x4x4xf32>) outs(%194 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x64x4x4xf32>
    %224 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%223, %cst_167 : tensor<1x64x4x4xf32>, tensor<384x64x1x1xf32>) outs(%199 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %225 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%224 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x384x4x4xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x4x4xf32>
    %227 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %225 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %padded_260 = tensor.pad %227 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x384x4x4xf32> to tensor<1x384x8x8xf32>
    %collapsed_261 = tensor.collapse_shape %cst_166 [[0, 1], [2], [3]] : tensor<384x1x5x5xf32> into tensor<384x5x5xf32>
    %228 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_260, %collapsed_261 : tensor<1x384x8x8xf32>, tensor<384x5x5xf32>) outs(%199 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %229 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%228 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x384x4x4xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x4x4xf32>
    %231 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %229 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %232 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%231, %185 : tensor<1x384x4x4xf32>, tensor<4x4xf32>) outs(%209 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %233 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x384x1x1xf32>) outs(%208 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_238 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x1x1xf32>
    %234 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%233, %cst_165 : tensor<1x384x1x1xf32>, tensor<16x384x1x1xf32>) outs(%213 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %235 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234 : tensor<1x16x1x1xf32>) outs(%212 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x16x1x1xf32>
    %236 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %234 : tensor<1x16x1x1xf32>, tensor<1x16x1x1xf32>) outs(%212 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x16x1x1xf32>
    %237 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%236, %cst_164 : tensor<1x16x1x1xf32>, tensor<384x16x1x1xf32>) outs(%217 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %238 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x384x1x1xf32>) outs(%208 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x1x1xf32>
    %239 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %231 : tensor<1x384x1x1xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %240 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%239, %cst_163 : tensor<1x384x4x4xf32>, tensor<64x384x1x1xf32>) outs(%195 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %241 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %cst_177, %cst_176, %cst_176, %cst_177 : tensor<1x64x4x4xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%240 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x64x4x4xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %223 : tensor<1x64x4x4xf32>, tensor<1x64x4x4xf32>) outs(%194 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x64x4x4xf32>
    %243 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%242, %cst_162 : tensor<1x64x4x4xf32>, tensor<384x64x1x1xf32>) outs(%199 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %244 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%243 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x384x4x4xf32>
    %245 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x4x4xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %244 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %padded_262 = tensor.pad %246 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x384x4x4xf32> to tensor<1x384x8x8xf32>
    %collapsed_263 = tensor.collapse_shape %cst_161 [[0, 1], [2], [3]] : tensor<384x1x5x5xf32> into tensor<384x5x5xf32>
    %247 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_262, %collapsed_263 : tensor<1x384x8x8xf32>, tensor<384x5x5xf32>) outs(%199 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %248 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%247 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x384x4x4xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x4x4xf32>
    %250 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %248 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %251 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%250, %185 : tensor<1x384x4x4xf32>, tensor<4x4xf32>) outs(%209 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %252 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251 : tensor<1x384x1x1xf32>) outs(%208 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_238 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x1x1xf32>
    %253 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%252, %cst_160 : tensor<1x384x1x1xf32>, tensor<16x384x1x1xf32>) outs(%213 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %254 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<1x16x1x1xf32>) outs(%212 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x16x1x1xf32>
    %255 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %253 : tensor<1x16x1x1xf32>, tensor<1x16x1x1xf32>) outs(%212 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x16x1x1xf32>
    %256 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%255, %cst_159 : tensor<1x16x1x1xf32>, tensor<384x16x1x1xf32>) outs(%217 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %257 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x384x1x1xf32>) outs(%208 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x1x1xf32>
    %258 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %250 : tensor<1x384x1x1xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %259 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%258, %cst_158 : tensor<1x384x4x4xf32>, tensor<64x384x1x1xf32>) outs(%195 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %260 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %cst_177, %cst_176, %cst_176, %cst_177 : tensor<1x64x4x4xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%259 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x64x4x4xf32>
    %261 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %242 : tensor<1x64x4x4xf32>, tensor<1x64x4x4xf32>) outs(%194 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x64x4x4xf32>
    %262 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%261, %cst_157 : tensor<1x64x4x4xf32>, tensor<384x64x1x1xf32>) outs(%199 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %263 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%262 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x384x4x4xf32>
    %264 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x4x4xf32>
    %265 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %263 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %padded_264 = tensor.pad %265 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x384x4x4xf32> to tensor<1x384x8x8xf32>
    %collapsed_265 = tensor.collapse_shape %cst_156 [[0, 1], [2], [3]] : tensor<384x1x5x5xf32> into tensor<384x5x5xf32>
    %266 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_264, %collapsed_265 : tensor<1x384x8x8xf32>, tensor<384x5x5xf32>) outs(%199 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %267 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%266 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x384x4x4xf32>
    %268 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x4x4xf32>
    %269 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %267 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %270 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%269, %185 : tensor<1x384x4x4xf32>, tensor<4x4xf32>) outs(%209 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %271 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270 : tensor<1x384x1x1xf32>) outs(%208 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_238 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x1x1xf32>
    %272 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%271, %cst_155 : tensor<1x384x1x1xf32>, tensor<16x384x1x1xf32>) outs(%213 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %273 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x16x1x1xf32>) outs(%212 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x16x1x1xf32>
    %274 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273, %272 : tensor<1x16x1x1xf32>, tensor<1x16x1x1xf32>) outs(%212 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x16x1x1xf32>
    %275 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%274, %cst_154 : tensor<1x16x1x1xf32>, tensor<384x16x1x1xf32>) outs(%217 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %276 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275 : tensor<1x384x1x1xf32>) outs(%208 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x1x1xf32>
    %277 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276, %269 : tensor<1x384x1x1xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%277, %cst_153 : tensor<1x384x4x4xf32>, tensor<64x384x1x1xf32>) outs(%195 : tensor<1x64x4x4xf32>) -> tensor<1x64x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %279 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %cst_177, %cst_176, %cst_176, %cst_177 : tensor<1x64x4x4xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%278 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x64x4x4xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %261 : tensor<1x64x4x4xf32>, tensor<1x64x4x4xf32>) outs(%194 : tensor<1x64x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x64x4x4xf32>
    %281 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%280, %cst_152 : tensor<1x64x4x4xf32>, tensor<384x64x1x1xf32>) outs(%199 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%281 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x384x4x4xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x4x4xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %282 : tensor<1x384x4x4xf32>, tensor<1x384x4x4xf32>) outs(%198 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x4x4xf32>
    %padded_266 = tensor.pad %284 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x384x4x4xf32> to tensor<1x384x6x6xf32>
    %285 = tensor.empty() : tensor<1x384x2x2xf32>
    %286 = linalg.fill ins(%cst_234 : f32) outs(%285 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %collapsed_267 = tensor.collapse_shape %cst_151 [[0, 1], [2], [3]] : tensor<384x1x3x3xf32> into tensor<384x3x3xf32>
    %287 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_266, %collapsed_267 : tensor<1x384x6x6xf32>, tensor<384x3x3xf32>) outs(%286 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %288 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %cst_174, %cst_173, %cst_173, %cst_174 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%287 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x384x2x2xf32>
    %289 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288 : tensor<1x384x2x2xf32>) outs(%285 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x2x2xf32>
    %290 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %288 : tensor<1x384x2x2xf32>, tensor<1x384x2x2xf32>) outs(%285 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x2x2xf32>
    %291 = tensor.empty() : tensor<2x2xf32>
    %292 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%290, %291 : tensor<1x384x2x2xf32>, tensor<2x2xf32>) outs(%209 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %293 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x384x1x1xf32>) outs(%208 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x1x1xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%293, %cst_150 : tensor<1x384x1x1xf32>, tensor<16x384x1x1xf32>) outs(%213 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %295 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<1x16x1x1xf32>) outs(%212 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x16x1x1xf32>
    %296 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295, %294 : tensor<1x16x1x1xf32>, tensor<1x16x1x1xf32>) outs(%212 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x16x1x1xf32>
    %297 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%296, %cst_149 : tensor<1x16x1x1xf32>, tensor<384x16x1x1xf32>) outs(%217 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %298 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x384x1x1xf32>) outs(%208 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x384x1x1xf32>
    %299 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %290 : tensor<1x384x1x1xf32>, tensor<1x384x2x2xf32>) outs(%285 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x384x2x2xf32>
    %300 = tensor.empty() : tensor<1x128x2x2xf32>
    %301 = linalg.fill ins(%cst_234 : f32) outs(%300 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    %302 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%299, %cst_148 : tensor<1x384x2x2xf32>, tensor<128x384x1x1xf32>) outs(%301 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %303 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%302 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x128x2x2xf32>
    %304 = tensor.empty() : tensor<1x768x2x2xf32>
    %305 = linalg.fill ins(%cst_234 : f32) outs(%304 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    %306 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%303, %cst_145 : tensor<1x128x2x2xf32>, tensor<768x128x1x1xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %307 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%306 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %308 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %307 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_268 = tensor.pad %309 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_269 = tensor.collapse_shape %cst_142 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %310 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_268, %collapsed_269 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %311 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%310 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %312 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %313 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %311 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %314 = tensor.empty() : tensor<1x768x1x1xf32>
    %315 = linalg.fill ins(%cst_234 : f32) outs(%314 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %316 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%313, %291 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%315 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %317 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x1x1xf32>
    %318 = tensor.empty() : tensor<1x32x1x1xf32>
    %319 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_141 : tensor<32xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %320 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%317, %cst_140 : tensor<1x768x1x1xf32>, tensor<32x768x1x1xf32>) outs(%319 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %321 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x32x1x1xf32>
    %322 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %320 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x32x1x1xf32>
    %323 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_143 : tensor<768xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %324 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%322, %cst_139 : tensor<1x32x1x1xf32>, tensor<768x32x1x1xf32>) outs(%323 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %325 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x1x1xf32>
    %326 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %313 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %327 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%326, %cst_138 : tensor<1x768x2x2xf32>, tensor<128x768x1x1xf32>) outs(%301 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %328 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%327 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x128x2x2xf32>
    %329 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %303 : tensor<1x128x2x2xf32>, tensor<1x128x2x2xf32>) outs(%300 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x128x2x2xf32>
    %330 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%329, %cst_137 : tensor<1x128x2x2xf32>, tensor<768x128x1x1xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %331 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%330 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %332 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %333 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %331 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_270 = tensor.pad %333 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_271 = tensor.collapse_shape %cst_136 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %334 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_270, %collapsed_271 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %335 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%334 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %336 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %337 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %335 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %338 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%337, %291 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%315 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %339 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x1x1xf32>
    %340 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%339, %cst_135 : tensor<1x768x1x1xf32>, tensor<32x768x1x1xf32>) outs(%319 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %341 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340 : tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x32x1x1xf32>
    %342 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341, %340 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x32x1x1xf32>
    %343 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%342, %cst_134 : tensor<1x32x1x1xf32>, tensor<768x32x1x1xf32>) outs(%323 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %344 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x1x1xf32>
    %345 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %337 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %346 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%345, %cst_133 : tensor<1x768x2x2xf32>, tensor<128x768x1x1xf32>) outs(%301 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %347 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%346 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x128x2x2xf32>
    %348 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347, %329 : tensor<1x128x2x2xf32>, tensor<1x128x2x2xf32>) outs(%300 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x128x2x2xf32>
    %349 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%348, %cst_132 : tensor<1x128x2x2xf32>, tensor<768x128x1x1xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %350 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%349 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %351 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %352 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %350 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_272 = tensor.pad %352 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_273 = tensor.collapse_shape %cst_131 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %353 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_272, %collapsed_273 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %354 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%353 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %355 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %356 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %354 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %357 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%356, %291 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%315 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %358 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x1x1xf32>
    %359 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%358, %cst_130 : tensor<1x768x1x1xf32>, tensor<32x768x1x1xf32>) outs(%319 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %360 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359 : tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x32x1x1xf32>
    %361 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360, %359 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x32x1x1xf32>
    %362 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%361, %cst_129 : tensor<1x32x1x1xf32>, tensor<768x32x1x1xf32>) outs(%323 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %363 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x1x1xf32>
    %364 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %356 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %365 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%364, %cst_128 : tensor<1x768x2x2xf32>, tensor<128x768x1x1xf32>) outs(%301 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %366 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%365 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x128x2x2xf32>
    %367 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %348 : tensor<1x128x2x2xf32>, tensor<1x128x2x2xf32>) outs(%300 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x128x2x2xf32>
    %368 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%367, %cst_127 : tensor<1x128x2x2xf32>, tensor<768x128x1x1xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %369 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%368 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %370 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %371 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370, %369 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_274 = tensor.pad %371 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_275 = tensor.collapse_shape %cst_126 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %372 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_274, %collapsed_275 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %373 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%372 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %374 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %375 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374, %373 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %376 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%375, %291 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%315 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %377 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x1x1xf32>
    %378 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%377, %cst_125 : tensor<1x768x1x1xf32>, tensor<32x768x1x1xf32>) outs(%319 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %379 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378 : tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x32x1x1xf32>
    %380 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379, %378 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x32x1x1xf32>
    %381 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%380, %cst_124 : tensor<1x32x1x1xf32>, tensor<768x32x1x1xf32>) outs(%323 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %382 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x1x1xf32>
    %383 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382, %375 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %384 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%383, %cst_123 : tensor<1x768x2x2xf32>, tensor<128x768x1x1xf32>) outs(%301 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %385 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%384 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x128x2x2xf32>
    %386 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %367 : tensor<1x128x2x2xf32>, tensor<1x128x2x2xf32>) outs(%300 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x128x2x2xf32>
    %387 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%386, %cst_122 : tensor<1x128x2x2xf32>, tensor<768x128x1x1xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %388 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%387 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %389 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %390 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %388 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_276 = tensor.pad %390 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_277 = tensor.collapse_shape %cst_121 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %391 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_276, %collapsed_277 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %392 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%391 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %393 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %394 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %392 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %395 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%394, %291 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%315 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %396 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x1x1xf32>
    %397 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%396, %cst_120 : tensor<1x768x1x1xf32>, tensor<32x768x1x1xf32>) outs(%319 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %398 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397 : tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x32x1x1xf32>
    %399 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398, %397 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x32x1x1xf32>
    %400 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%399, %cst_119 : tensor<1x32x1x1xf32>, tensor<768x32x1x1xf32>) outs(%323 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %401 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x1x1xf32>
    %402 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %394 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %403 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%402, %cst_118 : tensor<1x768x2x2xf32>, tensor<128x768x1x1xf32>) outs(%301 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %404 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%403 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x128x2x2xf32>
    %405 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404, %386 : tensor<1x128x2x2xf32>, tensor<1x128x2x2xf32>) outs(%300 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x128x2x2xf32>
    %406 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%405, %cst_117 : tensor<1x128x2x2xf32>, tensor<768x128x1x1xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %407 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%406 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %408 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %409 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %407 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_278 = tensor.pad %409 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %collapsed_279 = tensor.collapse_shape %cst_116 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %410 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_278, %collapsed_279 : tensor<1x768x4x4xf32>, tensor<768x3x3xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %411 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%410 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %412 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %413 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412, %411 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %414 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%413, %291 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%315 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %415 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x1x1xf32>
    %416 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%415, %cst_115 : tensor<1x768x1x1xf32>, tensor<32x768x1x1xf32>) outs(%319 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %417 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416 : tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x32x1x1xf32>
    %418 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %416 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x32x1x1xf32>
    %419 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%418, %cst_114 : tensor<1x32x1x1xf32>, tensor<768x32x1x1xf32>) outs(%323 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %420 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x1x1xf32>
    %421 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420, %413 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %422 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%421, %cst_113 : tensor<1x768x2x2xf32>, tensor<128x768x1x1xf32>) outs(%301 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %423 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%422 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x128x2x2xf32>
    %424 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423, %405 : tensor<1x128x2x2xf32>, tensor<1x128x2x2xf32>) outs(%300 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x128x2x2xf32>
    %425 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%424, %cst_112 : tensor<1x128x2x2xf32>, tensor<768x128x1x1xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %426 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%425 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %427 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %428 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427, %426 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %padded_280 = tensor.pad %428 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x6x6xf32>
    %collapsed_281 = tensor.collapse_shape %cst_111 [[0, 1], [2], [3]] : tensor<768x1x5x5xf32> into tensor<768x5x5xf32>
    %429 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_280, %collapsed_281 : tensor<1x768x6x6xf32>, tensor<768x5x5xf32>) outs(%305 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %430 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429, %cst_144, %cst_143, %cst_143, %cst_144 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%429 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x768x2x2xf32>
    %431 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430 : tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x2x2xf32>
    %432 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431, %430 : tensor<1x768x2x2xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %433 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%432, %291 : tensor<1x768x2x2xf32>, tensor<2x2xf32>) outs(%315 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %434 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%433 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x1x1xf32>
    %435 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%434, %cst_110 : tensor<1x768x1x1xf32>, tensor<32x768x1x1xf32>) outs(%319 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %436 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x32x1x1xf32>
    %437 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436, %435 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%318 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x32x1x1xf32>
    %438 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%437, %cst_109 : tensor<1x32x1x1xf32>, tensor<768x32x1x1xf32>) outs(%323 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %439 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438 : tensor<1x768x1x1xf32>) outs(%314 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x768x1x1xf32>
    %440 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439, %432 : tensor<1x768x1x1xf32>, tensor<1x768x2x2xf32>) outs(%304 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x768x2x2xf32>
    %441 = tensor.empty() : tensor<1x176x2x2xf32>
    %442 = linalg.fill ins(%cst_234 : f32) outs(%441 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    %443 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%440, %cst_108 : tensor<1x768x2x2xf32>, tensor<176x768x1x1xf32>) outs(%442 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %444 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%443 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x176x2x2xf32>
    %445 = tensor.empty() : tensor<1x1056x2x2xf32>
    %446 = linalg.fill ins(%cst_234 : f32) outs(%445 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    %447 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%444, %cst_105 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %448 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%447 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %449 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %450 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449, %448 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_282 = tensor.pad %450 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x6x6xf32>
    %collapsed_283 = tensor.collapse_shape %cst_102 [[0, 1], [2], [3]] : tensor<1056x1x5x5xf32> into tensor<1056x5x5xf32>
    %451 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_282, %collapsed_283 : tensor<1x1056x6x6xf32>, tensor<1056x5x5xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %452 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%451 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %453 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %454 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453, %452 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %455 = tensor.empty() : tensor<1x1056x1x1xf32>
    %456 = linalg.fill ins(%cst_234 : f32) outs(%455 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %457 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%454, %291 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%456 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %458 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x1x1xf32>
    %459 = tensor.empty() : tensor<1x44x1x1xf32>
    %460 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_101 : tensor<44xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x44x1x1xf32>
    %461 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%458, %cst_100 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%460 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %462 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461 : tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x44x1x1xf32>
    %463 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462, %461 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x44x1x1xf32>
    %464 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_103 : tensor<1056xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1056x1x1xf32>
    %465 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%463, %cst_99 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%464 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %466 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x1x1xf32>
    %467 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466, %454 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %468 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%467, %cst_98 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%442 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %469 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%468 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x176x2x2xf32>
    %470 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469, %444 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%441 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x176x2x2xf32>
    %471 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%470, %cst_97 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %472 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%471 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %473 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %474 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473, %472 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_284 = tensor.pad %474 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x6x6xf32>
    %collapsed_285 = tensor.collapse_shape %cst_96 [[0, 1], [2], [3]] : tensor<1056x1x5x5xf32> into tensor<1056x5x5xf32>
    %475 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_284, %collapsed_285 : tensor<1x1056x6x6xf32>, tensor<1056x5x5xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %476 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%475 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %477 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %478 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477, %476 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %479 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%478, %291 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%456 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %480 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x1x1xf32>
    %481 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%480, %cst_95 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%460 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %482 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481 : tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x44x1x1xf32>
    %483 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482, %481 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x44x1x1xf32>
    %484 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%483, %cst_94 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%464 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %485 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x1x1xf32>
    %486 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%485, %478 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %487 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%486, %cst_93 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%442 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %488 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%487 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x176x2x2xf32>
    %489 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488, %470 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%441 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x176x2x2xf32>
    %490 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%489, %cst_92 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %491 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%490 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %492 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %493 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %491 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_286 = tensor.pad %493 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x6x6xf32>
    %collapsed_287 = tensor.collapse_shape %cst_91 [[0, 1], [2], [3]] : tensor<1056x1x5x5xf32> into tensor<1056x5x5xf32>
    %494 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_286, %collapsed_287 : tensor<1x1056x6x6xf32>, tensor<1056x5x5xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %495 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%494 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %496 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %497 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496, %495 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %498 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%497, %291 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%456 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %499 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x1x1xf32>
    %500 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%499, %cst_90 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%460 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %501 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500 : tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x44x1x1xf32>
    %502 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %500 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x44x1x1xf32>
    %503 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%502, %cst_89 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%464 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %504 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x1x1xf32>
    %505 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504, %497 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %506 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%505, %cst_88 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%442 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %507 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%506, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%506 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x176x2x2xf32>
    %508 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%507, %489 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%441 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x176x2x2xf32>
    %509 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%508, %cst_87 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %510 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%509 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %511 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %512 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511, %510 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_288 = tensor.pad %512 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x6x6xf32>
    %collapsed_289 = tensor.collapse_shape %cst_86 [[0, 1], [2], [3]] : tensor<1056x1x5x5xf32> into tensor<1056x5x5xf32>
    %513 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_288, %collapsed_289 : tensor<1x1056x6x6xf32>, tensor<1056x5x5xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %514 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%513 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %515 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %516 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515, %514 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %517 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%516, %291 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%456 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %518 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x1x1xf32>
    %519 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%518, %cst_85 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%460 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %520 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x44x1x1xf32>
    %521 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520, %519 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x44x1x1xf32>
    %522 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%521, %cst_84 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%464 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %523 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x1x1xf32>
    %524 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523, %516 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %525 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%524, %cst_83 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%442 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %526 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%525 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x176x2x2xf32>
    %527 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526, %508 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%441 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x176x2x2xf32>
    %528 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%527, %cst_82 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %529 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%528 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %530 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %531 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530, %529 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_290 = tensor.pad %531 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x6x6xf32>
    %collapsed_291 = tensor.collapse_shape %cst_81 [[0, 1], [2], [3]] : tensor<1056x1x5x5xf32> into tensor<1056x5x5xf32>
    %532 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_290, %collapsed_291 : tensor<1x1056x6x6xf32>, tensor<1056x5x5xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %533 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%532 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %534 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %535 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534, %533 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %536 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%535, %291 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%456 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %537 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x1x1xf32>
    %538 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%537, %cst_80 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%460 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %539 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538 : tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x44x1x1xf32>
    %540 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539, %538 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x44x1x1xf32>
    %541 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%540, %cst_79 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%464 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %542 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x1x1xf32>
    %543 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542, %535 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %544 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%543, %cst_78 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%442 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %545 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%544 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x176x2x2xf32>
    %546 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545, %527 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%441 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x176x2x2xf32>
    %547 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%546, %cst_77 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %548 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%547, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%547 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %549 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %550 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549, %548 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_292 = tensor.pad %550 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x6x6xf32>
    %collapsed_293 = tensor.collapse_shape %cst_76 [[0, 1], [2], [3]] : tensor<1056x1x5x5xf32> into tensor<1056x5x5xf32>
    %551 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_292, %collapsed_293 : tensor<1x1056x6x6xf32>, tensor<1056x5x5xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %552 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%551 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %553 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %554 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553, %552 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %555 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%554, %291 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%456 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %556 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.divf %in, %cst_239 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x1x1xf32>
    %557 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%556, %cst_75 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%460 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %558 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557 : tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x44x1x1xf32>
    %559 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558, %557 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x44x1x1xf32>
    %560 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%559, %cst_74 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%464 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %561 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x1x1xf32>
    %562 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561, %554 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %563 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%562, %cst_73 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%442 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %564 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%563 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x176x2x2xf32>
    %565 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564, %546 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%441 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x176x2x2xf32>
    %566 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%565, %cst_72 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%446 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %567 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%566 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x2x2xf32>
    %568 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567 : tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x2x2xf32>
    %569 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568, %567 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%445 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_294 = tensor.pad %569 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x6x6xf32>
    %collapsed_295 = tensor.collapse_shape %cst_71 [[0, 1], [2], [3]] : tensor<1056x1x5x5xf32> into tensor<1056x5x5xf32>
    %570 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_294, %collapsed_295 : tensor<1x1056x6x6xf32>, tensor<1056x5x5xf32>) outs(%456 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %571 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570, %cst_104, %cst_103, %cst_103, %cst_104 : tensor<1x1056x1x1xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%570 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1056x1x1xf32>
    %572 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x1x1xf32>
    %573 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572, %571 : tensor<1x1056x1x1xf32>, tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x1x1xf32>
    %574 = tensor.empty() : tensor<1x1xf32>
    %575 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%573, %574 : tensor<1x1056x1x1xf32>, tensor<1x1xf32>) outs(%456 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %576 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%575, %cst_70 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%460 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %577 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576 : tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x44x1x1xf32>
    %578 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577, %576 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%459 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x44x1x1xf32>
    %579 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%578, %cst_69 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%464 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %580 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579 : tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1056x1x1xf32>
    %581 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%580, %573 : tensor<1x1056x1x1xf32>, tensor<1x1056x1x1xf32>) outs(%455 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1056x1x1xf32>
    %582 = tensor.empty() : tensor<1x304x1x1xf32>
    %583 = linalg.fill ins(%cst_234 : f32) outs(%582 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    %584 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%581, %cst_68 : tensor<1x1056x1x1xf32>, tensor<304x1056x1x1xf32>) outs(%583 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %585 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%584 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x304x1x1xf32>
    %586 = tensor.empty() : tensor<1x1824x1x1xf32>
    %587 = linalg.fill ins(%cst_234 : f32) outs(%586 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %588 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%585, %cst_65 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %589 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%588 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %590 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%589 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %591 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%590, %589 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_296 = tensor.pad %591 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x5x5xf32>
    %collapsed_297 = tensor.collapse_shape %cst_62 [[0, 1], [2], [3]] : tensor<1824x1x5x5xf32> into tensor<1824x5x5xf32>
    %592 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_296, %collapsed_297 : tensor<1x1824x5x5xf32>, tensor<1824x5x5xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %593 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%592 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %594 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %595 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594, %593 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %596 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%595, %574 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %597 = tensor.empty() : tensor<1x76x1x1xf32>
    %598 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_61 : tensor<76xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x76x1x1xf32>
    %599 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%596, %cst_60 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%598 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %600 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599 : tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x76x1x1xf32>
    %601 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%600, %599 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x76x1x1xf32>
    %602 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_63 : tensor<1824xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1824x1x1xf32>
    %603 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%601, %cst_59 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%602 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %604 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %605 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604, %595 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %606 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%605, %cst_58 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%583 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %607 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%606 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x304x1x1xf32>
    %608 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%607, %585 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%582 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x304x1x1xf32>
    %609 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%608, %cst_57 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %610 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%609 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %612 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611, %610 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_298 = tensor.pad %612 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x5x5xf32>
    %collapsed_299 = tensor.collapse_shape %cst_56 [[0, 1], [2], [3]] : tensor<1824x1x5x5xf32> into tensor<1824x5x5xf32>
    %613 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_298, %collapsed_299 : tensor<1x1824x5x5xf32>, tensor<1824x5x5xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %614 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%613 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %615 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %616 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615, %614 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %617 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%616, %574 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %618 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%617, %cst_55 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%598 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %619 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618 : tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x76x1x1xf32>
    %620 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619, %618 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x76x1x1xf32>
    %621 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%620, %cst_54 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%602 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %622 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %623 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622, %616 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %624 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%623, %cst_53 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%583 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %625 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%624 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x304x1x1xf32>
    %626 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%625, %608 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%582 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x304x1x1xf32>
    %627 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%626, %cst_52 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %628 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%627, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%627 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %629 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %630 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%629, %628 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_300 = tensor.pad %630 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x5x5xf32>
    %collapsed_301 = tensor.collapse_shape %cst_51 [[0, 1], [2], [3]] : tensor<1824x1x5x5xf32> into tensor<1824x5x5xf32>
    %631 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_300, %collapsed_301 : tensor<1x1824x5x5xf32>, tensor<1824x5x5xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %632 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%631 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %633 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%632 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %634 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633, %632 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %635 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%634, %574 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %636 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%635, %cst_50 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%598 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %637 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636 : tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x76x1x1xf32>
    %638 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%637, %636 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x76x1x1xf32>
    %639 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%638, %cst_49 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%602 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %640 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %641 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640, %634 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %642 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%641, %cst_48 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%583 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %643 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%642 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x304x1x1xf32>
    %644 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643, %626 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%582 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x304x1x1xf32>
    %645 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%644, %cst_47 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %646 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%645, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%645 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %647 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %648 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%647, %646 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_302 = tensor.pad %648 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x5x5xf32>
    %collapsed_303 = tensor.collapse_shape %cst_46 [[0, 1], [2], [3]] : tensor<1824x1x5x5xf32> into tensor<1824x5x5xf32>
    %649 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_302, %collapsed_303 : tensor<1x1824x5x5xf32>, tensor<1824x5x5xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %650 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%649 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %651 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%650 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %652 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651, %650 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %653 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%652, %574 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %654 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%653, %cst_45 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%598 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %655 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%654 : tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x76x1x1xf32>
    %656 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655, %654 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x76x1x1xf32>
    %657 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%656, %cst_44 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%602 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %658 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%657 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %659 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658, %652 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %660 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%659, %cst_43 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%583 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %661 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%660, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%660 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x304x1x1xf32>
    %662 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661, %644 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%582 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x304x1x1xf32>
    %663 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%662, %cst_42 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %664 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%663 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %665 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%664 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %666 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%665, %664 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_304 = tensor.pad %666 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x5x5xf32>
    %collapsed_305 = tensor.collapse_shape %cst_41 [[0, 1], [2], [3]] : tensor<1824x1x5x5xf32> into tensor<1824x5x5xf32>
    %667 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_304, %collapsed_305 : tensor<1x1824x5x5xf32>, tensor<1824x5x5xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %668 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%667, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%667 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %669 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %670 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669, %668 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %671 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%670, %574 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %672 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%671, %cst_40 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%598 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %673 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672 : tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x76x1x1xf32>
    %674 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%673, %672 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x76x1x1xf32>
    %675 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%674, %cst_39 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%602 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %676 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %677 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676, %670 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %678 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%677, %cst_38 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%583 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %679 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%678, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%678 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x304x1x1xf32>
    %680 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%679, %662 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%582 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x304x1x1xf32>
    %681 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%680, %cst_37 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %682 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%681, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%681 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %683 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%682 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %684 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%683, %682 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_306 = tensor.pad %684 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x5x5xf32>
    %collapsed_307 = tensor.collapse_shape %cst_36 [[0, 1], [2], [3]] : tensor<1824x1x5x5xf32> into tensor<1824x5x5xf32>
    %685 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_306, %collapsed_307 : tensor<1x1824x5x5xf32>, tensor<1824x5x5xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %686 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%685, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%685 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %687 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %688 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%687, %686 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %689 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%688, %574 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %690 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%689, %cst_35 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%598 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %691 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%690 : tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x76x1x1xf32>
    %692 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%691, %690 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x76x1x1xf32>
    %693 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%692, %cst_34 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%602 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %694 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%693 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %695 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694, %688 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %696 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%695, %cst_33 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%583 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %697 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%696, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%696 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x304x1x1xf32>
    %698 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%697, %680 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%582 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x304x1x1xf32>
    %699 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%698, %cst_32 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %700 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%699, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%699 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %701 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%700 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %702 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%701, %700 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_308 = tensor.pad %702 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x5x5xf32>
    %collapsed_309 = tensor.collapse_shape %cst_31 [[0, 1], [2], [3]] : tensor<1824x1x5x5xf32> into tensor<1824x5x5xf32>
    %703 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_308, %collapsed_309 : tensor<1x1824x5x5xf32>, tensor<1824x5x5xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %704 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%703 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %705 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%704 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %706 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705, %704 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %707 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%706, %574 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %708 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%707, %cst_30 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%598 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %709 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%708 : tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x76x1x1xf32>
    %710 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%709, %708 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x76x1x1xf32>
    %711 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%710, %cst_29 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%602 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %712 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%711 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %713 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%712, %706 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %714 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%713, %cst_28 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%583 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %715 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%714, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%714 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x304x1x1xf32>
    %716 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%715, %698 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%582 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x304x1x1xf32>
    %717 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%716, %cst_27 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %718 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%717, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%717 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %719 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%718 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %720 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719, %718 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_310 = tensor.pad %720 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x5x5xf32>
    %collapsed_311 = tensor.collapse_shape %cst_26 [[0, 1], [2], [3]] : tensor<1824x1x5x5xf32> into tensor<1824x5x5xf32>
    %721 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_310, %collapsed_311 : tensor<1x1824x5x5xf32>, tensor<1824x5x5xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %722 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%721, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%721 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %723 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%722 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %724 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%723, %722 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %725 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%724, %574 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %726 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%725, %cst_25 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%598 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %727 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726 : tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x76x1x1xf32>
    %728 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%727, %726 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x76x1x1xf32>
    %729 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%728, %cst_24 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%602 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %730 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%729 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %731 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%730, %724 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %732 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%731, %cst_23 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%583 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %733 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%732, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%732 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x304x1x1xf32>
    %734 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733, %716 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%582 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x304x1x1xf32>
    %735 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%734, %cst_22 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %736 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%735 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %737 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%736 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %738 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%737, %736 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_312 = tensor.pad %738 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_313 = tensor.collapse_shape %cst_21 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %739 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_312, %collapsed_313 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %740 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%739, %cst_64, %cst_63, %cst_63, %cst_64 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%739 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x1824x1x1xf32>
    %741 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%740 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %742 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%741, %740 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %743 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%742, %574 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%587 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %744 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%743, %cst_20 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%598 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %745 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%744 : tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x76x1x1xf32>
    %746 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%745, %744 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%597 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x76x1x1xf32>
    %747 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%746, %cst_19 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%602 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %748 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%747 : tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x1824x1x1xf32>
    %749 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%748, %742 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%586 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1824x1x1xf32>
    %750 = tensor.empty() : tensor<1x512x1x1xf32>
    %751 = linalg.fill ins(%cst_234 : f32) outs(%750 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %752 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%749, %cst_18 : tensor<1x1824x1x1xf32>, tensor<512x1824x1x1xf32>) outs(%751 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %753 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%752, %cst_17, %cst_16, %cst_16, %cst_17 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%752 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x512x1x1xf32>
    %754 = tensor.empty() : tensor<1x3072x1x1xf32>
    %755 = linalg.fill ins(%cst_234 : f32) outs(%754 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %756 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%753, %cst_15 : tensor<1x512x1x1xf32>, tensor<3072x512x1x1xf32>) outs(%755 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %757 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%756, %cst_14, %cst_13, %cst_13, %cst_14 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%756 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x3072x1x1xf32>
    %758 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%757 : tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x3072x1x1xf32>
    %759 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%758, %757 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x3072x1x1xf32>
    %padded_314 = tensor.pad %759 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x3072x1x1xf32> to tensor<1x3072x3x3xf32>
    %collapsed_315 = tensor.collapse_shape %cst_12 [[0, 1], [2], [3]] : tensor<3072x1x3x3xf32> into tensor<3072x3x3xf32>
    %760 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_314, %collapsed_315 : tensor<1x3072x3x3xf32>, tensor<3072x3x3xf32>) outs(%755 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %761 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%760, %cst_14, %cst_13, %cst_13, %cst_14 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%760 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x3072x1x1xf32>
    %762 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%761 : tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x3072x1x1xf32>
    %763 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%762, %761 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x3072x1x1xf32>
    %764 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%763, %574 : tensor<1x3072x1x1xf32>, tensor<1x1xf32>) outs(%755 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %765 = tensor.empty() : tensor<1x128x1x1xf32>
    %766 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_146 : tensor<128xf32>) outs(%765 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x1x1xf32>
    %767 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%764, %cst_11 : tensor<1x3072x1x1xf32>, tensor<128x3072x1x1xf32>) outs(%766 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %768 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%767 : tensor<1x128x1x1xf32>) outs(%765 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x128x1x1xf32>
    %769 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%768, %767 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%765 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x128x1x1xf32>
    %770 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<3072xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x1x1xf32>
    %771 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%769, %cst_10 : tensor<1x128x1x1xf32>, tensor<3072x128x1x1xf32>) outs(%770 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %772 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%771 : tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x3072x1x1xf32>
    %773 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%772, %763 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x3072x1x1xf32>
    %774 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%773, %cst_9 : tensor<1x3072x1x1xf32>, tensor<512x3072x1x1xf32>) outs(%751 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %775 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%774, %cst_17, %cst_16, %cst_16, %cst_17 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%774 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x512x1x1xf32>
    %776 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%775, %753 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%750 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x512x1x1xf32>
    %777 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%776, %cst_8 : tensor<1x512x1x1xf32>, tensor<3072x512x1x1xf32>) outs(%755 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %778 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%777, %cst_14, %cst_13, %cst_13, %cst_14 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%777 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x3072x1x1xf32>
    %779 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%778 : tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x3072x1x1xf32>
    %780 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%779, %778 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x3072x1x1xf32>
    %padded_316 = tensor.pad %780 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_234 : f32
    } : tensor<1x3072x1x1xf32> to tensor<1x3072x3x3xf32>
    %collapsed_317 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<3072x1x3x3xf32> into tensor<3072x3x3xf32>
    %781 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_316, %collapsed_317 : tensor<1x3072x3x3xf32>, tensor<3072x3x3xf32>) outs(%755 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %782 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%781, %cst_14, %cst_13, %cst_13, %cst_14 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%781 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x3072x1x1xf32>
    %783 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%782 : tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x3072x1x1xf32>
    %784 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%783, %782 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x3072x1x1xf32>
    %785 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%784, %574 : tensor<1x3072x1x1xf32>, tensor<1x1xf32>) outs(%755 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %786 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%785, %cst_6 : tensor<1x3072x1x1xf32>, tensor<128x3072x1x1xf32>) outs(%766 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %787 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%786 : tensor<1x128x1x1xf32>) outs(%765 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x128x1x1xf32>
    %788 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%787, %786 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%765 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x128x1x1xf32>
    %789 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%788, %cst_5 : tensor<1x128x1x1xf32>, tensor<3072x128x1x1xf32>) outs(%770 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %790 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%789 : tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x3072x1x1xf32>
    %791 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%790, %784 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%754 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x3072x1x1xf32>
    %792 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%791, %cst_4 : tensor<1x3072x1x1xf32>, tensor<512x3072x1x1xf32>) outs(%751 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %793 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%792, %cst_17, %cst_16, %cst_16, %cst_17 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%792 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x512x1x1xf32>
    %794 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%793, %776 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%750 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x512x1x1xf32>
    %795 = tensor.empty() : tensor<1x2048x1x1xf32>
    %796 = linalg.fill ins(%cst_234 : f32) outs(%795 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %797 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%794, %cst_3 : tensor<1x512x1x1xf32>, tensor<2048x512x1x1xf32>) outs(%796 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %798 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%797, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%797 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %in_320: f32, %in_321: f32, %in_322: f32, %out: f32):
      %808 = arith.truncf %cst_235 : f64 to f32
      %809 = arith.addf %in_322, %808 : f32
      %810 = math.rsqrt %809 : f32
      %811 = arith.subf %in, %in_321 : f32
      %812 = arith.mulf %811, %810 : f32
      %813 = arith.mulf %812, %in_319 : f32
      %814 = arith.addf %813, %in_320 : f32
      linalg.yield %814 : f32
    } -> tensor<1x2048x1x1xf32>
    %799 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%798 : tensor<1x2048x1x1xf32>) outs(%795 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %808 = arith.negf %in : f32
      %809 = math.exp %808 : f32
      %810 = arith.addf %809, %cst_240 : f32
      %811 = arith.divf %cst_240, %810 : f32
      linalg.yield %811 : f32
    } -> tensor<1x2048x1x1xf32>
    %800 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%799, %798 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%795 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.mulf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x2048x1x1xf32>
    %801 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%800, %574 : tensor<1x2048x1x1xf32>, tensor<1x1xf32>) outs(%796 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %collapsed_318 = tensor.collapse_shape %801 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %802 = tensor.empty() : tensor<2048x1000xf32>
    %803 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x2048xf32>) outs(%802 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %804 = tensor.empty() : tensor<1x1000xf32>
    %805 = linalg.fill ins(%cst_234 : f32) outs(%804 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %806 = linalg.matmul ins(%collapsed_318, %803 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%805 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %807 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%806, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%804 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_319: f32, %out: f32):
      %808 = arith.addf %in, %in_319 : f32
      linalg.yield %808 : f32
    } -> tensor<1x1000xf32>
    return %807 : tensor<1x1000xf32>
  }
}
