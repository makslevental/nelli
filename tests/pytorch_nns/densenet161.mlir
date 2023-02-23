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
    %cst = arith.constant dense<-0.000885e+00> : tensor<1000x2208xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<2208xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<2208xf32>
    %cst_3 = arith.constant dense<-0.009018e+00> : tensor<48x192x3x3xf32>
    %cst_4 = arith.constant dense<0.004060e+00> : tensor<192x2160x1x1xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<2160xf32>
    %cst_6 = arith.constant dense<1.000000e+00> : tensor<2160xf32>
    %cst_7 = arith.constant dense<-0.002766e+00> : tensor<48x192x3x3xf32>
    %cst_8 = arith.constant dense<0.005523e+00> : tensor<192x2112x1x1xf32>
    %cst_9 = arith.constant dense<-0.006364e+00> : tensor<48x192x3x3xf32>
    %cst_10 = arith.constant dense<-0.001711e+00> : tensor<192x2064x1x1xf32>
    %cst_11 = arith.constant dense<0.005431e+00> : tensor<48x192x3x3xf32>
    %cst_12 = arith.constant dense<0.022208e+00> : tensor<192x2016x1x1xf32>
    %cst_13 = arith.constant dense<-0.002365e+00> : tensor<48x192x3x3xf32>
    %cst_14 = arith.constant dense<0.008214e+00> : tensor<192x1968x1x1xf32>
    %cst_15 = arith.constant dense<-0.014130e+00> : tensor<48x192x3x3xf32>
    %cst_16 = arith.constant dense<0.004852e+00> : tensor<192x1920x1x1xf32>
    %cst_17 = arith.constant dense<-0.002509e+00> : tensor<48x192x3x3xf32>
    %cst_18 = arith.constant dense<-0.007970e+00> : tensor<192x1872x1x1xf32>
    %cst_19 = arith.constant dense<0.026184e+00> : tensor<48x192x3x3xf32>
    %cst_20 = arith.constant dense<0.017122e+00> : tensor<192x1824x1x1xf32>
    %cst_21 = arith.constant dense<-0.002330e+00> : tensor<48x192x3x3xf32>
    %cst_22 = arith.constant dense<0.016281e+00> : tensor<192x1776x1x1xf32>
    %cst_23 = arith.constant dense<0.001705e+00> : tensor<48x192x3x3xf32>
    %cst_24 = arith.constant dense<0.011138e+00> : tensor<192x1728x1x1xf32>
    %cst_25 = arith.constant dense<-0.009927e+00> : tensor<48x192x3x3xf32>
    %cst_26 = arith.constant dense<-0.001444e+00> : tensor<192x1680x1x1xf32>
    %cst_27 = arith.constant dense<-0.018032e+00> : tensor<48x192x3x3xf32>
    %cst_28 = arith.constant dense<0.002168e+00> : tensor<192x1632x1x1xf32>
    %cst_29 = arith.constant dense<-0.005705e+00> : tensor<48x192x3x3xf32>
    %cst_30 = arith.constant dense<0.013130e+00> : tensor<192x1584x1x1xf32>
    %cst_31 = arith.constant dense<-0.008734e+00> : tensor<48x192x3x3xf32>
    %cst_32 = arith.constant dense<0.005339e+00> : tensor<192x1536x1x1xf32>
    %cst_33 = arith.constant dense<0.011927e+00> : tensor<48x192x3x3xf32>
    %cst_34 = arith.constant dense<-0.007331e+00> : tensor<192x1488x1x1xf32>
    %cst_35 = arith.constant dense<-0.005057e+00> : tensor<48x192x3x3xf32>
    %cst_36 = arith.constant dense<0.001336e+00> : tensor<192x1440x1x1xf32>
    %cst_37 = arith.constant dense<-0.006079e+00> : tensor<48x192x3x3xf32>
    %cst_38 = arith.constant dense<-0.000921e+00> : tensor<192x1392x1x1xf32>
    %cst_39 = arith.constant dense<0.019283e+00> : tensor<48x192x3x3xf32>
    %cst_40 = arith.constant dense<0.001425e+00> : tensor<192x1344x1x1xf32>
    %cst_41 = arith.constant dense<0.013800e+00> : tensor<48x192x3x3xf32>
    %cst_42 = arith.constant dense<-0.003379e+00> : tensor<192x1296x1x1xf32>
    %cst_43 = arith.constant dense<0.014852e+00> : tensor<48x192x3x3xf32>
    %cst_44 = arith.constant dense<0.006911e+00> : tensor<192x1248x1x1xf32>
    %cst_45 = arith.constant dense<-0.006871e+00> : tensor<48x192x3x3xf32>
    %cst_46 = arith.constant dense<-0.013483e+00> : tensor<192x1200x1x1xf32>
    %cst_47 = arith.constant dense<0.001126e+00> : tensor<48x192x3x3xf32>
    %cst_48 = arith.constant dense<0.001851e+00> : tensor<192x1152x1x1xf32>
    %cst_49 = arith.constant dense<0.016721e+00> : tensor<48x192x3x3xf32>
    %cst_50 = arith.constant dense<-0.003185e+00> : tensor<192x1104x1x1xf32>
    %cst_51 = arith.constant dense<0.001691e+00> : tensor<48x192x3x3xf32>
    %cst_52 = arith.constant dense<-0.000968e+00> : tensor<192x1056x1x1xf32>
    %cst_53 = arith.constant dense<0.005077e+00> : tensor<1056x2112x1x1xf32>
    %cst_54 = arith.constant dense<0.000000e+00> : tensor<2112xf32>
    %cst_55 = arith.constant dense<1.000000e+00> : tensor<2112xf32>
    %cst_56 = arith.constant dense<-0.014783e+00> : tensor<48x192x3x3xf32>
    %cst_57 = arith.constant dense<-0.000882e+00> : tensor<192x2064x1x1xf32>
    %cst_58 = arith.constant dense<0.000000e+00> : tensor<2064xf32>
    %cst_59 = arith.constant dense<1.000000e+00> : tensor<2064xf32>
    %cst_60 = arith.constant dense<0.006069e+00> : tensor<48x192x3x3xf32>
    %cst_61 = arith.constant dense<-0.004381e+00> : tensor<192x2016x1x1xf32>
    %cst_62 = arith.constant dense<0.000000e+00> : tensor<2016xf32>
    %cst_63 = arith.constant dense<1.000000e+00> : tensor<2016xf32>
    %cst_64 = arith.constant dense<-0.003402e+00> : tensor<48x192x3x3xf32>
    %cst_65 = arith.constant dense<-0.012247e+00> : tensor<192x1968x1x1xf32>
    %cst_66 = arith.constant dense<0.000000e+00> : tensor<1968xf32>
    %cst_67 = arith.constant dense<1.000000e+00> : tensor<1968xf32>
    %cst_68 = arith.constant dense<0.011022e+00> : tensor<48x192x3x3xf32>
    %cst_69 = arith.constant dense<-0.005772e+00> : tensor<192x1920x1x1xf32>
    %cst_70 = arith.constant dense<0.000000e+00> : tensor<1920xf32>
    %cst_71 = arith.constant dense<1.000000e+00> : tensor<1920xf32>
    %cst_72 = arith.constant dense<-0.003882e+00> : tensor<48x192x3x3xf32>
    %cst_73 = arith.constant dense<0.007087e+00> : tensor<192x1872x1x1xf32>
    %cst_74 = arith.constant dense<0.000000e+00> : tensor<1872xf32>
    %cst_75 = arith.constant dense<1.000000e+00> : tensor<1872xf32>
    %cst_76 = arith.constant dense<0.007996e+00> : tensor<48x192x3x3xf32>
    %cst_77 = arith.constant dense<-0.006517e+00> : tensor<192x1824x1x1xf32>
    %cst_78 = arith.constant dense<0.000000e+00> : tensor<1824xf32>
    %cst_79 = arith.constant dense<1.000000e+00> : tensor<1824xf32>
    %cst_80 = arith.constant dense<-0.006129e+00> : tensor<48x192x3x3xf32>
    %cst_81 = arith.constant dense<-0.009301e+00> : tensor<192x1776x1x1xf32>
    %cst_82 = arith.constant dense<0.000000e+00> : tensor<1776xf32>
    %cst_83 = arith.constant dense<1.000000e+00> : tensor<1776xf32>
    %cst_84 = arith.constant dense<0.014135e+00> : tensor<48x192x3x3xf32>
    %cst_85 = arith.constant dense<0.007082e+00> : tensor<192x1728x1x1xf32>
    %cst_86 = arith.constant dense<0.000000e+00> : tensor<1728xf32>
    %cst_87 = arith.constant dense<1.000000e+00> : tensor<1728xf32>
    %cst_88 = arith.constant dense<-0.005840e+00> : tensor<48x192x3x3xf32>
    %cst_89 = arith.constant dense<-0.005428e+00> : tensor<192x1680x1x1xf32>
    %cst_90 = arith.constant dense<0.000000e+00> : tensor<1680xf32>
    %cst_91 = arith.constant dense<1.000000e+00> : tensor<1680xf32>
    %cst_92 = arith.constant dense<-0.009919e+00> : tensor<48x192x3x3xf32>
    %cst_93 = arith.constant dense<-0.001481e+00> : tensor<192x1632x1x1xf32>
    %cst_94 = arith.constant dense<0.000000e+00> : tensor<1632xf32>
    %cst_95 = arith.constant dense<1.000000e+00> : tensor<1632xf32>
    %cst_96 = arith.constant dense<-0.017651e+00> : tensor<48x192x3x3xf32>
    %cst_97 = arith.constant dense<-0.006048e+00> : tensor<192x1584x1x1xf32>
    %cst_98 = arith.constant dense<0.000000e+00> : tensor<1584xf32>
    %cst_99 = arith.constant dense<1.000000e+00> : tensor<1584xf32>
    %cst_100 = arith.constant dense<-0.001310e+00> : tensor<48x192x3x3xf32>
    %cst_101 = arith.constant dense<-0.005676e+00> : tensor<192x1536x1x1xf32>
    %cst_102 = arith.constant dense<0.000000e+00> : tensor<1536xf32>
    %cst_103 = arith.constant dense<1.000000e+00> : tensor<1536xf32>
    %cst_104 = arith.constant dense<-0.001247e+00> : tensor<48x192x3x3xf32>
    %cst_105 = arith.constant dense<0.000124e+00> : tensor<192x1488x1x1xf32>
    %cst_106 = arith.constant dense<0.000000e+00> : tensor<1488xf32>
    %cst_107 = arith.constant dense<1.000000e+00> : tensor<1488xf32>
    %cst_108 = arith.constant dense<-0.013574e+00> : tensor<48x192x3x3xf32>
    %cst_109 = arith.constant dense<-0.001621e+00> : tensor<192x1440x1x1xf32>
    %cst_110 = arith.constant dense<0.000000e+00> : tensor<1440xf32>
    %cst_111 = arith.constant dense<1.000000e+00> : tensor<1440xf32>
    %cst_112 = arith.constant dense<0.009416e+00> : tensor<48x192x3x3xf32>
    %cst_113 = arith.constant dense<0.001395e+00> : tensor<192x1392x1x1xf32>
    %cst_114 = arith.constant dense<0.000000e+00> : tensor<1392xf32>
    %cst_115 = arith.constant dense<1.000000e+00> : tensor<1392xf32>
    %cst_116 = arith.constant dense<-0.007024e+00> : tensor<48x192x3x3xf32>
    %cst_117 = arith.constant dense<0.007241e+00> : tensor<192x1344x1x1xf32>
    %cst_118 = arith.constant dense<0.000000e+00> : tensor<1344xf32>
    %cst_119 = arith.constant dense<1.000000e+00> : tensor<1344xf32>
    %cst_120 = arith.constant dense<-0.000878e+00> : tensor<48x192x3x3xf32>
    %cst_121 = arith.constant dense<0.005015e+00> : tensor<192x1296x1x1xf32>
    %cst_122 = arith.constant dense<0.000000e+00> : tensor<1296xf32>
    %cst_123 = arith.constant dense<1.000000e+00> : tensor<1296xf32>
    %cst_124 = arith.constant dense<-0.009383e+00> : tensor<48x192x3x3xf32>
    %cst_125 = arith.constant dense<0.010643e+00> : tensor<192x1248x1x1xf32>
    %cst_126 = arith.constant dense<0.000000e+00> : tensor<1248xf32>
    %cst_127 = arith.constant dense<1.000000e+00> : tensor<1248xf32>
    %cst_128 = arith.constant dense<0.003019e+00> : tensor<48x192x3x3xf32>
    %cst_129 = arith.constant dense<0.005162e+00> : tensor<192x1200x1x1xf32>
    %cst_130 = arith.constant dense<0.000000e+00> : tensor<1200xf32>
    %cst_131 = arith.constant dense<1.000000e+00> : tensor<1200xf32>
    %cst_132 = arith.constant dense<-0.009861e+00> : tensor<48x192x3x3xf32>
    %cst_133 = arith.constant dense<-0.011986e+00> : tensor<192x1152x1x1xf32>
    %cst_134 = arith.constant dense<0.000000e+00> : tensor<1152xf32>
    %cst_135 = arith.constant dense<1.000000e+00> : tensor<1152xf32>
    %cst_136 = arith.constant dense<-0.011785e+00> : tensor<48x192x3x3xf32>
    %cst_137 = arith.constant dense<0.002220e+00> : tensor<192x1104x1x1xf32>
    %cst_138 = arith.constant dense<0.000000e+00> : tensor<1104xf32>
    %cst_139 = arith.constant dense<1.000000e+00> : tensor<1104xf32>
    %cst_140 = arith.constant dense<-0.012038e+00> : tensor<48x192x3x3xf32>
    %cst_141 = arith.constant dense<0.000479e+00> : tensor<192x1056x1x1xf32>
    %cst_142 = arith.constant dense<0.000000e+00> : tensor<1056xf32>
    %cst_143 = arith.constant dense<1.000000e+00> : tensor<1056xf32>
    %cst_144 = arith.constant dense<-0.007947e+00> : tensor<48x192x3x3xf32>
    %cst_145 = arith.constant dense<0.009269e+00> : tensor<192x1008x1x1xf32>
    %cst_146 = arith.constant dense<0.000000e+00> : tensor<1008xf32>
    %cst_147 = arith.constant dense<1.000000e+00> : tensor<1008xf32>
    %cst_148 = arith.constant dense<-0.011536e+00> : tensor<48x192x3x3xf32>
    %cst_149 = arith.constant dense<-0.008067e+00> : tensor<192x960x1x1xf32>
    %cst_150 = arith.constant dense<0.000000e+00> : tensor<960xf32>
    %cst_151 = arith.constant dense<1.000000e+00> : tensor<960xf32>
    %cst_152 = arith.constant dense<0.003025e+00> : tensor<48x192x3x3xf32>
    %cst_153 = arith.constant dense<-0.006937e+00> : tensor<192x912x1x1xf32>
    %cst_154 = arith.constant dense<0.000000e+00> : tensor<912xf32>
    %cst_155 = arith.constant dense<1.000000e+00> : tensor<912xf32>
    %cst_156 = arith.constant dense<0.000332e+00> : tensor<48x192x3x3xf32>
    %cst_157 = arith.constant dense<-0.009932e+00> : tensor<192x864x1x1xf32>
    %cst_158 = arith.constant dense<0.000000e+00> : tensor<864xf32>
    %cst_159 = arith.constant dense<1.000000e+00> : tensor<864xf32>
    %cst_160 = arith.constant dense<0.003548e+00> : tensor<48x192x3x3xf32>
    %cst_161 = arith.constant dense<-0.027223e+00> : tensor<192x816x1x1xf32>
    %cst_162 = arith.constant dense<0.000000e+00> : tensor<816xf32>
    %cst_163 = arith.constant dense<1.000000e+00> : tensor<816xf32>
    %cst_164 = arith.constant dense<-0.007609e+00> : tensor<48x192x3x3xf32>
    %cst_165 = arith.constant dense<-0.013843e+00> : tensor<192x768x1x1xf32>
    %cst_166 = arith.constant dense<0.020742e+00> : tensor<48x192x3x3xf32>
    %cst_167 = arith.constant dense<-0.012576e+00> : tensor<192x720x1x1xf32>
    %cst_168 = arith.constant dense<-0.013690e+00> : tensor<48x192x3x3xf32>
    %cst_169 = arith.constant dense<0.001813e+00> : tensor<192x672x1x1xf32>
    %cst_170 = arith.constant dense<0.004737e+00> : tensor<48x192x3x3xf32>
    %cst_171 = arith.constant dense<-0.003094e+00> : tensor<192x624x1x1xf32>
    %cst_172 = arith.constant dense<-0.005486e+00> : tensor<48x192x3x3xf32>
    %cst_173 = arith.constant dense<0.014382e+00> : tensor<192x576x1x1xf32>
    %cst_174 = arith.constant dense<-0.004119e+00> : tensor<48x192x3x3xf32>
    %cst_175 = arith.constant dense<0.002658e+00> : tensor<192x528x1x1xf32>
    %cst_176 = arith.constant dense<-0.007641e+00> : tensor<48x192x3x3xf32>
    %cst_177 = arith.constant dense<-0.001957e+00> : tensor<192x480x1x1xf32>
    %cst_178 = arith.constant dense<-0.012416e+00> : tensor<48x192x3x3xf32>
    %cst_179 = arith.constant dense<0.008057e+00> : tensor<192x432x1x1xf32>
    %cst_180 = arith.constant dense<-0.006896e+00> : tensor<48x192x3x3xf32>
    %cst_181 = arith.constant dense<-0.011488e+00> : tensor<192x384x1x1xf32>
    %cst_182 = arith.constant dense<0.001165e+00> : tensor<384x768x1x1xf32>
    %cst_183 = arith.constant dense<0.000000e+00> : tensor<768xf32>
    %cst_184 = arith.constant dense<1.000000e+00> : tensor<768xf32>
    %cst_185 = arith.constant dense<0.012915e+00> : tensor<48x192x3x3xf32>
    %cst_186 = arith.constant dense<0.012141e+00> : tensor<192x720x1x1xf32>
    %cst_187 = arith.constant dense<0.000000e+00> : tensor<720xf32>
    %cst_188 = arith.constant dense<1.000000e+00> : tensor<720xf32>
    %cst_189 = arith.constant dense<0.003097e+00> : tensor<48x192x3x3xf32>
    %cst_190 = arith.constant dense<0.005869e+00> : tensor<192x672x1x1xf32>
    %cst_191 = arith.constant dense<0.000000e+00> : tensor<672xf32>
    %cst_192 = arith.constant dense<1.000000e+00> : tensor<672xf32>
    %cst_193 = arith.constant dense<0.004936e+00> : tensor<48x192x3x3xf32>
    %cst_194 = arith.constant dense<0.009109e+00> : tensor<192x624x1x1xf32>
    %cst_195 = arith.constant dense<0.000000e+00> : tensor<624xf32>
    %cst_196 = arith.constant dense<1.000000e+00> : tensor<624xf32>
    %cst_197 = arith.constant dense<-0.016601e+00> : tensor<48x192x3x3xf32>
    %cst_198 = arith.constant dense<-0.006042e+00> : tensor<192x576x1x1xf32>
    %cst_199 = arith.constant dense<0.000000e+00> : tensor<576xf32>
    %cst_200 = arith.constant dense<1.000000e+00> : tensor<576xf32>
    %cst_201 = arith.constant dense<0.020455e+00> : tensor<48x192x3x3xf32>
    %cst_202 = arith.constant dense<0.002270e+00> : tensor<192x528x1x1xf32>
    %cst_203 = arith.constant dense<0.000000e+00> : tensor<528xf32>
    %cst_204 = arith.constant dense<1.000000e+00> : tensor<528xf32>
    %cst_205 = arith.constant dense<0.014971e+00> : tensor<48x192x3x3xf32>
    %cst_206 = arith.constant dense<0.006445e+00> : tensor<192x480x1x1xf32>
    %cst_207 = arith.constant dense<0.000000e+00> : tensor<480xf32>
    %cst_208 = arith.constant dense<1.000000e+00> : tensor<480xf32>
    %cst_209 = arith.constant dense<-0.007847e+00> : tensor<48x192x3x3xf32>
    %cst_210 = arith.constant dense<0.034504e+00> : tensor<192x432x1x1xf32>
    %cst_211 = arith.constant dense<0.000000e+00> : tensor<432xf32>
    %cst_212 = arith.constant dense<1.000000e+00> : tensor<432xf32>
    %cst_213 = arith.constant dense<-0.003354e+00> : tensor<48x192x3x3xf32>
    %cst_214 = arith.constant dense<0.004265e+00> : tensor<192x384x1x1xf32>
    %cst_215 = arith.constant dense<0.012159e+00> : tensor<48x192x3x3xf32>
    %cst_216 = arith.constant dense<0.001638e+00> : tensor<192x336x1x1xf32>
    %cst_217 = arith.constant dense<-0.025092e+00> : tensor<48x192x3x3xf32>
    %cst_218 = arith.constant dense<-0.003169e+00> : tensor<192x288x1x1xf32>
    %cst_219 = arith.constant dense<0.001561e+00> : tensor<48x192x3x3xf32>
    %cst_220 = arith.constant dense<-0.009962e+00> : tensor<192x240x1x1xf32>
    %cst_221 = arith.constant dense<-0.007535e+00> : tensor<48x192x3x3xf32>
    %cst_222 = arith.constant dense<-0.010716e+00> : tensor<192x192x1x1xf32>
    %cst_223 = arith.constant dense<-0.002782e+00> : tensor<192x384x1x1xf32>
    %cst_224 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_225 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_226 = arith.constant dense<0.020605e+00> : tensor<48x192x3x3xf32>
    %cst_227 = arith.constant dense<0.001649e+00> : tensor<192x336x1x1xf32>
    %cst_228 = arith.constant dense<0.000000e+00> : tensor<336xf32>
    %cst_229 = arith.constant dense<1.000000e+00> : tensor<336xf32>
    %cst_230 = arith.constant dense<0.001811e+00> : tensor<48x192x3x3xf32>
    %cst_231 = arith.constant dense<-0.013700e+00> : tensor<192x288x1x1xf32>
    %cst_232 = arith.constant dense<0.000000e+00> : tensor<288xf32>
    %cst_233 = arith.constant dense<1.000000e+00> : tensor<288xf32>
    %cst_234 = arith.constant dense<-0.005293e+00> : tensor<48x192x3x3xf32>
    %cst_235 = arith.constant dense<-0.001529e+00> : tensor<192x240x1x1xf32>
    %cst_236 = arith.constant dense<0.000000e+00> : tensor<240xf32>
    %cst_237 = arith.constant dense<1.000000e+00> : tensor<240xf32>
    %cst_238 = arith.constant dense<-0.016323e+00> : tensor<48x192x3x3xf32>
    %cst_239 = arith.constant dense<-0.009966e+00> : tensor<192x192x1x1xf32>
    %cst_240 = arith.constant dense<0.006985e+00> : tensor<48x192x3x3xf32>
    %cst_241 = arith.constant dense<0.011232e+00> : tensor<192x144x1x1xf32>
    %cst_242 = arith.constant dense<0.000000e+00> : tensor<144xf32>
    %cst_243 = arith.constant dense<1.000000e+00> : tensor<144xf32>
    %cst_244 = arith.constant dense<-0.006151e+00> : tensor<48x192x3x3xf32>
    %cst_245 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_246 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_247 = arith.constant dense<-0.005579e+00> : tensor<192x96x1x1xf32>
    %cst_248 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_249 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_250 = arith.constant dense<0.008863e+00> : tensor<96x3x7x7xf32>
    %cst_251 = arith.constant 0.000000e+00 : f32
    %cst_252 = arith.constant -3.40282347E+38 : f32
    %cst_253 = arith.constant 1.000000e-05 : f64
    %c3 = arith.constant 3 : index
    %cst_254 = arith.constant 4.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x38x38xf32>
    %0 = tensor.empty() : tensor<1x96x16x16xf32>
    %1 = linalg.fill ins(%cst_251 : f32) outs(%0 : tensor<1x96x16x16xf32>) -> tensor<1x96x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_250 : tensor<1x3x38x38xf32>, tensor<96x3x7x7xf32>) outs(%1 : tensor<1x96x16x16xf32>) -> tensor<1x96x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_249, %cst_248, %cst_248, %cst_249 : tensor<1x96x16x16xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%2 : tensor<1x96x16x16xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x96x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x96x16x16xf32>) outs(%0 : tensor<1x96x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x96x16x16xf32>
    %padded_255 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_252 : f32
    } : tensor<1x96x16x16xf32> to tensor<1x96x18x18xf32>
    %6 = tensor.empty() : tensor<1x96x8x8xf32>
    %7 = linalg.fill ins(%cst_252 : f32) outs(%6 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_255, %8 : tensor<1x96x18x18xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %10 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %cst_249, %cst_248, %cst_248, %cst_249 : tensor<1x96x8x8xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%9 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x96x8x8xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x96x8x8xf32>) outs(%6 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x96x8x8xf32>
    %12 = tensor.empty() : tensor<1x192x8x8xf32>
    %13 = linalg.fill ins(%cst_251 : f32) outs(%12 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%11, %cst_247 : tensor<1x96x8x8xf32>, tensor<192x96x1x1xf32>) outs(%13 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%14 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x8x8xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x192x8x8xf32>) outs(%12 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_256 = tensor.pad %16 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %17 = tensor.empty() : tensor<1x48x8x8xf32>
    %18 = linalg.fill ins(%cst_251 : f32) outs(%17 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_256, %cst_244 : tensor<1x192x10x10xf32>, tensor<48x192x3x3xf32>) outs(%18 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    %20 = tensor.empty() : tensor<1x144x8x8xf32>
    %inserted_slice = tensor.insert_slice %9 into %20[0, 0, 0, 0] [1, 96, 8, 8] [1, 1, 1, 1] : tensor<1x96x8x8xf32> into tensor<1x144x8x8xf32>
    %inserted_slice_257 = tensor.insert_slice %19 into %inserted_slice[0, 96, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x144x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %21 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_257, %cst_243, %cst_242, %cst_242, %cst_243 : tensor<1x144x8x8xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>) outs(%inserted_slice_257 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x144x8x8xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x144x8x8xf32>) outs(%20 : tensor<1x144x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x144x8x8xf32>
    %23 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%22, %cst_241 : tensor<1x144x8x8xf32>, tensor<192x144x1x1xf32>) outs(%13 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %24 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%23 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x8x8xf32>
    %25 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x192x8x8xf32>) outs(%12 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_258 = tensor.pad %25 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_258, %cst_240 : tensor<1x192x10x10xf32>, tensor<48x192x3x3xf32>) outs(%18 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    %inserted_slice_259 = tensor.insert_slice %9 into %12[0, 0, 0, 0] [1, 96, 8, 8] [1, 1, 1, 1] : tensor<1x96x8x8xf32> into tensor<1x192x8x8xf32>
    %inserted_slice_260 = tensor.insert_slice %19 into %inserted_slice_259[0, 96, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x192x8x8xf32>
    %inserted_slice_261 = tensor.insert_slice %26 into %inserted_slice_260[0, 144, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %27 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_261, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%inserted_slice_261 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x8x8xf32>
    %28 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27 : tensor<1x192x8x8xf32>) outs(%12 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x8x8xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%28, %cst_239 : tensor<1x192x8x8xf32>, tensor<192x192x1x1xf32>) outs(%13 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%29 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x8x8xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x192x8x8xf32>) outs(%12 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_262 = tensor.pad %31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_262, %cst_238 : tensor<1x192x10x10xf32>, tensor<48x192x3x3xf32>) outs(%18 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    %33 = tensor.empty() : tensor<1x240x8x8xf32>
    %inserted_slice_263 = tensor.insert_slice %9 into %33[0, 0, 0, 0] [1, 96, 8, 8] [1, 1, 1, 1] : tensor<1x96x8x8xf32> into tensor<1x240x8x8xf32>
    %inserted_slice_264 = tensor.insert_slice %19 into %inserted_slice_263[0, 96, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x240x8x8xf32>
    %inserted_slice_265 = tensor.insert_slice %26 into %inserted_slice_264[0, 144, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x240x8x8xf32>
    %inserted_slice_266 = tensor.insert_slice %32 into %inserted_slice_265[0, 192, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x240x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %34 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_266, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x240x8x8xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%inserted_slice_266 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x240x8x8xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x240x8x8xf32>) outs(%33 : tensor<1x240x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x240x8x8xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%35, %cst_235 : tensor<1x240x8x8xf32>, tensor<192x240x1x1xf32>) outs(%13 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%36 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x8x8xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x192x8x8xf32>) outs(%12 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_267 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_267, %cst_234 : tensor<1x192x10x10xf32>, tensor<48x192x3x3xf32>) outs(%18 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    %40 = tensor.empty() : tensor<1x288x8x8xf32>
    %inserted_slice_268 = tensor.insert_slice %9 into %40[0, 0, 0, 0] [1, 96, 8, 8] [1, 1, 1, 1] : tensor<1x96x8x8xf32> into tensor<1x288x8x8xf32>
    %inserted_slice_269 = tensor.insert_slice %19 into %inserted_slice_268[0, 96, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x288x8x8xf32>
    %inserted_slice_270 = tensor.insert_slice %26 into %inserted_slice_269[0, 144, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x288x8x8xf32>
    %inserted_slice_271 = tensor.insert_slice %32 into %inserted_slice_270[0, 192, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x288x8x8xf32>
    %inserted_slice_272 = tensor.insert_slice %39 into %inserted_slice_271[0, 240, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x288x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %41 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_272, %cst_233, %cst_232, %cst_232, %cst_233 : tensor<1x288x8x8xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%inserted_slice_272 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x288x8x8xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41 : tensor<1x288x8x8xf32>) outs(%40 : tensor<1x288x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x288x8x8xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%42, %cst_231 : tensor<1x288x8x8xf32>, tensor<192x288x1x1xf32>) outs(%13 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%43 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x8x8xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x192x8x8xf32>) outs(%12 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_273 = tensor.pad %45 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_273, %cst_230 : tensor<1x192x10x10xf32>, tensor<48x192x3x3xf32>) outs(%18 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    %47 = tensor.empty() : tensor<1x336x8x8xf32>
    %inserted_slice_274 = tensor.insert_slice %9 into %47[0, 0, 0, 0] [1, 96, 8, 8] [1, 1, 1, 1] : tensor<1x96x8x8xf32> into tensor<1x336x8x8xf32>
    %inserted_slice_275 = tensor.insert_slice %19 into %inserted_slice_274[0, 96, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x336x8x8xf32>
    %inserted_slice_276 = tensor.insert_slice %26 into %inserted_slice_275[0, 144, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x336x8x8xf32>
    %inserted_slice_277 = tensor.insert_slice %32 into %inserted_slice_276[0, 192, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x336x8x8xf32>
    %inserted_slice_278 = tensor.insert_slice %39 into %inserted_slice_277[0, 240, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x336x8x8xf32>
    %inserted_slice_279 = tensor.insert_slice %46 into %inserted_slice_278[0, 288, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x336x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_279, %cst_229, %cst_228, %cst_228, %cst_229 : tensor<1x336x8x8xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>) outs(%inserted_slice_279 : tensor<1x336x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x336x8x8xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x336x8x8xf32>) outs(%47 : tensor<1x336x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x336x8x8xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%49, %cst_227 : tensor<1x336x8x8xf32>, tensor<192x336x1x1xf32>) outs(%13 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%50 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x8x8xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51 : tensor<1x192x8x8xf32>) outs(%12 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x8x8xf32>
    %padded_280 = tensor.pad %52 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x8x8xf32> to tensor<1x192x10x10xf32>
    %53 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_280, %cst_226 : tensor<1x192x10x10xf32>, tensor<48x192x3x3xf32>) outs(%18 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    %54 = tensor.empty() : tensor<1x384x8x8xf32>
    %inserted_slice_281 = tensor.insert_slice %9 into %54[0, 0, 0, 0] [1, 96, 8, 8] [1, 1, 1, 1] : tensor<1x96x8x8xf32> into tensor<1x384x8x8xf32>
    %inserted_slice_282 = tensor.insert_slice %19 into %inserted_slice_281[0, 96, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x384x8x8xf32>
    %inserted_slice_283 = tensor.insert_slice %26 into %inserted_slice_282[0, 144, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x384x8x8xf32>
    %inserted_slice_284 = tensor.insert_slice %32 into %inserted_slice_283[0, 192, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x384x8x8xf32>
    %inserted_slice_285 = tensor.insert_slice %39 into %inserted_slice_284[0, 240, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x384x8x8xf32>
    %inserted_slice_286 = tensor.insert_slice %46 into %inserted_slice_285[0, 288, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x384x8x8xf32>
    %inserted_slice_287 = tensor.insert_slice %53 into %inserted_slice_286[0, 336, 0, 0] [1, 48, 8, 8] [1, 1, 1, 1] : tensor<1x48x8x8xf32> into tensor<1x384x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %55 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_287, %cst_225, %cst_224, %cst_224, %cst_225 : tensor<1x384x8x8xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%inserted_slice_287 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x384x8x8xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x384x8x8xf32>) outs(%54 : tensor<1x384x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x384x8x8xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%56, %cst_223 : tensor<1x384x8x8xf32>, tensor<192x384x1x1xf32>) outs(%13 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    %58 = tensor.empty() : tensor<1x192x4x4xf32>
    %59 = linalg.fill ins(%cst_251 : f32) outs(%58 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %60 = tensor.empty() : tensor<2x2xf32>
    %61 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%57, %60 : tensor<1x192x8x8xf32>, tensor<2x2xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %62 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.divf %in, %cst_254 : f32
      linalg.yield %604 : f32
    } -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%62 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%64, %cst_222 : tensor<1x192x4x4xf32>, tensor<192x192x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %66 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%65 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %67 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_288 = tensor.pad %67 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %68 = tensor.empty() : tensor<1x48x4x4xf32>
    %69 = linalg.fill ins(%cst_251 : f32) outs(%68 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_288, %cst_221 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %71 = tensor.empty() : tensor<1x240x4x4xf32>
    %inserted_slice_289 = tensor.insert_slice %62 into %71[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x240x4x4xf32>
    %inserted_slice_290 = tensor.insert_slice %70 into %inserted_slice_289[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x240x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %72 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_290, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x240x4x4xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%inserted_slice_290 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x240x4x4xf32>
    %73 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72 : tensor<1x240x4x4xf32>) outs(%71 : tensor<1x240x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x240x4x4xf32>
    %74 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%73, %cst_220 : tensor<1x240x4x4xf32>, tensor<192x240x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %75 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%74 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %76 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_291 = tensor.pad %76 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %77 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_291, %cst_219 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %78 = tensor.empty() : tensor<1x288x4x4xf32>
    %inserted_slice_292 = tensor.insert_slice %62 into %78[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_293 = tensor.insert_slice %70 into %inserted_slice_292[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x288x4x4xf32>
    %inserted_slice_294 = tensor.insert_slice %77 into %inserted_slice_293[0, 240, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x288x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %79 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_294, %cst_233, %cst_232, %cst_232, %cst_233 : tensor<1x288x4x4xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%inserted_slice_294 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x288x4x4xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79 : tensor<1x288x4x4xf32>) outs(%78 : tensor<1x288x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x288x4x4xf32>
    %81 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%80, %cst_218 : tensor<1x288x4x4xf32>, tensor<192x288x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %82 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%81 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_295 = tensor.pad %83 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %84 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_295, %cst_217 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %85 = tensor.empty() : tensor<1x336x4x4xf32>
    %inserted_slice_296 = tensor.insert_slice %62 into %85[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x336x4x4xf32>
    %inserted_slice_297 = tensor.insert_slice %70 into %inserted_slice_296[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x336x4x4xf32>
    %inserted_slice_298 = tensor.insert_slice %77 into %inserted_slice_297[0, 240, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x336x4x4xf32>
    %inserted_slice_299 = tensor.insert_slice %84 into %inserted_slice_298[0, 288, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x336x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %86 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_299, %cst_229, %cst_228, %cst_228, %cst_229 : tensor<1x336x4x4xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>, tensor<336xf32>) outs(%inserted_slice_299 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x336x4x4xf32>
    %87 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x336x4x4xf32>) outs(%85 : tensor<1x336x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x336x4x4xf32>
    %88 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%87, %cst_216 : tensor<1x336x4x4xf32>, tensor<192x336x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %89 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%88 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %90 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_300 = tensor.pad %90 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %91 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_300, %cst_215 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %92 = tensor.empty() : tensor<1x384x4x4xf32>
    %inserted_slice_301 = tensor.insert_slice %62 into %92[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_302 = tensor.insert_slice %70 into %inserted_slice_301[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_303 = tensor.insert_slice %77 into %inserted_slice_302[0, 240, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_304 = tensor.insert_slice %84 into %inserted_slice_303[0, 288, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x384x4x4xf32>
    %inserted_slice_305 = tensor.insert_slice %91 into %inserted_slice_304[0, 336, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x384x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %93 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_305, %cst_225, %cst_224, %cst_224, %cst_225 : tensor<1x384x4x4xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%inserted_slice_305 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x384x4x4xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x384x4x4xf32>) outs(%92 : tensor<1x384x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x384x4x4xf32>
    %95 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%94, %cst_214 : tensor<1x384x4x4xf32>, tensor<192x384x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %96 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%95 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %97 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_306 = tensor.pad %97 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %98 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_306, %cst_213 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %99 = tensor.empty() : tensor<1x432x4x4xf32>
    %inserted_slice_307 = tensor.insert_slice %62 into %99[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x432x4x4xf32>
    %inserted_slice_308 = tensor.insert_slice %70 into %inserted_slice_307[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x432x4x4xf32>
    %inserted_slice_309 = tensor.insert_slice %77 into %inserted_slice_308[0, 240, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x432x4x4xf32>
    %inserted_slice_310 = tensor.insert_slice %84 into %inserted_slice_309[0, 288, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x432x4x4xf32>
    %inserted_slice_311 = tensor.insert_slice %91 into %inserted_slice_310[0, 336, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x432x4x4xf32>
    %inserted_slice_312 = tensor.insert_slice %98 into %inserted_slice_311[0, 384, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x432x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %100 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_312, %cst_212, %cst_211, %cst_211, %cst_212 : tensor<1x432x4x4xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%inserted_slice_312 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x432x4x4xf32>
    %101 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x432x4x4xf32>) outs(%99 : tensor<1x432x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x432x4x4xf32>
    %102 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%101, %cst_210 : tensor<1x432x4x4xf32>, tensor<192x432x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %103 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%102 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %104 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_313 = tensor.pad %104 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %105 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_313, %cst_209 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %106 = tensor.empty() : tensor<1x480x4x4xf32>
    %inserted_slice_314 = tensor.insert_slice %62 into %106[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_315 = tensor.insert_slice %70 into %inserted_slice_314[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_316 = tensor.insert_slice %77 into %inserted_slice_315[0, 240, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_317 = tensor.insert_slice %84 into %inserted_slice_316[0, 288, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_318 = tensor.insert_slice %91 into %inserted_slice_317[0, 336, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_319 = tensor.insert_slice %98 into %inserted_slice_318[0, 384, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x480x4x4xf32>
    %inserted_slice_320 = tensor.insert_slice %105 into %inserted_slice_319[0, 432, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x480x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_320, %cst_208, %cst_207, %cst_207, %cst_208 : tensor<1x480x4x4xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%inserted_slice_320 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x480x4x4xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x480x4x4xf32>) outs(%106 : tensor<1x480x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x480x4x4xf32>
    %109 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%108, %cst_206 : tensor<1x480x4x4xf32>, tensor<192x480x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %110 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%109 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %111 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_321 = tensor.pad %111 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_321, %cst_205 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %113 = tensor.empty() : tensor<1x528x4x4xf32>
    %inserted_slice_322 = tensor.insert_slice %62 into %113[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x528x4x4xf32>
    %inserted_slice_323 = tensor.insert_slice %70 into %inserted_slice_322[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x528x4x4xf32>
    %inserted_slice_324 = tensor.insert_slice %77 into %inserted_slice_323[0, 240, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x528x4x4xf32>
    %inserted_slice_325 = tensor.insert_slice %84 into %inserted_slice_324[0, 288, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x528x4x4xf32>
    %inserted_slice_326 = tensor.insert_slice %91 into %inserted_slice_325[0, 336, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x528x4x4xf32>
    %inserted_slice_327 = tensor.insert_slice %98 into %inserted_slice_326[0, 384, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x528x4x4xf32>
    %inserted_slice_328 = tensor.insert_slice %105 into %inserted_slice_327[0, 432, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x528x4x4xf32>
    %inserted_slice_329 = tensor.insert_slice %112 into %inserted_slice_328[0, 480, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x528x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_329, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x528x4x4xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>) outs(%inserted_slice_329 : tensor<1x528x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x528x4x4xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x528x4x4xf32>) outs(%113 : tensor<1x528x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x528x4x4xf32>
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%115, %cst_202 : tensor<1x528x4x4xf32>, tensor<192x528x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %117 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%116 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_330 = tensor.pad %118 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %119 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_330, %cst_201 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %120 = tensor.empty() : tensor<1x576x4x4xf32>
    %inserted_slice_331 = tensor.insert_slice %62 into %120[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x576x4x4xf32>
    %inserted_slice_332 = tensor.insert_slice %70 into %inserted_slice_331[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x576x4x4xf32>
    %inserted_slice_333 = tensor.insert_slice %77 into %inserted_slice_332[0, 240, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x576x4x4xf32>
    %inserted_slice_334 = tensor.insert_slice %84 into %inserted_slice_333[0, 288, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x576x4x4xf32>
    %inserted_slice_335 = tensor.insert_slice %91 into %inserted_slice_334[0, 336, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x576x4x4xf32>
    %inserted_slice_336 = tensor.insert_slice %98 into %inserted_slice_335[0, 384, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x576x4x4xf32>
    %inserted_slice_337 = tensor.insert_slice %105 into %inserted_slice_336[0, 432, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x576x4x4xf32>
    %inserted_slice_338 = tensor.insert_slice %112 into %inserted_slice_337[0, 480, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x576x4x4xf32>
    %inserted_slice_339 = tensor.insert_slice %119 into %inserted_slice_338[0, 528, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x576x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %121 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_339, %cst_200, %cst_199, %cst_199, %cst_200 : tensor<1x576x4x4xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%inserted_slice_339 : tensor<1x576x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x576x4x4xf32>
    %122 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121 : tensor<1x576x4x4xf32>) outs(%120 : tensor<1x576x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x576x4x4xf32>
    %123 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%122, %cst_198 : tensor<1x576x4x4xf32>, tensor<192x576x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %124 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%123 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_340 = tensor.pad %125 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_340, %cst_197 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %127 = tensor.empty() : tensor<1x624x4x4xf32>
    %inserted_slice_341 = tensor.insert_slice %62 into %127[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x624x4x4xf32>
    %inserted_slice_342 = tensor.insert_slice %70 into %inserted_slice_341[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x624x4x4xf32>
    %inserted_slice_343 = tensor.insert_slice %77 into %inserted_slice_342[0, 240, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x624x4x4xf32>
    %inserted_slice_344 = tensor.insert_slice %84 into %inserted_slice_343[0, 288, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x624x4x4xf32>
    %inserted_slice_345 = tensor.insert_slice %91 into %inserted_slice_344[0, 336, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x624x4x4xf32>
    %inserted_slice_346 = tensor.insert_slice %98 into %inserted_slice_345[0, 384, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x624x4x4xf32>
    %inserted_slice_347 = tensor.insert_slice %105 into %inserted_slice_346[0, 432, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x624x4x4xf32>
    %inserted_slice_348 = tensor.insert_slice %112 into %inserted_slice_347[0, 480, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x624x4x4xf32>
    %inserted_slice_349 = tensor.insert_slice %119 into %inserted_slice_348[0, 528, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x624x4x4xf32>
    %inserted_slice_350 = tensor.insert_slice %126 into %inserted_slice_349[0, 576, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x624x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %128 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_350, %cst_196, %cst_195, %cst_195, %cst_196 : tensor<1x624x4x4xf32>, tensor<624xf32>, tensor<624xf32>, tensor<624xf32>, tensor<624xf32>) outs(%inserted_slice_350 : tensor<1x624x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x624x4x4xf32>
    %129 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x624x4x4xf32>) outs(%127 : tensor<1x624x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x624x4x4xf32>
    %130 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%129, %cst_194 : tensor<1x624x4x4xf32>, tensor<192x624x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %131 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%130 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %132 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_351 = tensor.pad %132 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %133 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_351, %cst_193 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %134 = tensor.empty() : tensor<1x672x4x4xf32>
    %inserted_slice_352 = tensor.insert_slice %62 into %134[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x672x4x4xf32>
    %inserted_slice_353 = tensor.insert_slice %70 into %inserted_slice_352[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x672x4x4xf32>
    %inserted_slice_354 = tensor.insert_slice %77 into %inserted_slice_353[0, 240, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x672x4x4xf32>
    %inserted_slice_355 = tensor.insert_slice %84 into %inserted_slice_354[0, 288, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x672x4x4xf32>
    %inserted_slice_356 = tensor.insert_slice %91 into %inserted_slice_355[0, 336, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x672x4x4xf32>
    %inserted_slice_357 = tensor.insert_slice %98 into %inserted_slice_356[0, 384, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x672x4x4xf32>
    %inserted_slice_358 = tensor.insert_slice %105 into %inserted_slice_357[0, 432, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x672x4x4xf32>
    %inserted_slice_359 = tensor.insert_slice %112 into %inserted_slice_358[0, 480, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x672x4x4xf32>
    %inserted_slice_360 = tensor.insert_slice %119 into %inserted_slice_359[0, 528, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x672x4x4xf32>
    %inserted_slice_361 = tensor.insert_slice %126 into %inserted_slice_360[0, 576, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x672x4x4xf32>
    %inserted_slice_362 = tensor.insert_slice %133 into %inserted_slice_361[0, 624, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x672x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_362, %cst_192, %cst_191, %cst_191, %cst_192 : tensor<1x672x4x4xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%inserted_slice_362 : tensor<1x672x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x672x4x4xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x672x4x4xf32>) outs(%134 : tensor<1x672x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x672x4x4xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%136, %cst_190 : tensor<1x672x4x4xf32>, tensor<192x672x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%137 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_363 = tensor.pad %139 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %140 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_363, %cst_189 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %141 = tensor.empty() : tensor<1x720x4x4xf32>
    %inserted_slice_364 = tensor.insert_slice %62 into %141[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x720x4x4xf32>
    %inserted_slice_365 = tensor.insert_slice %70 into %inserted_slice_364[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x720x4x4xf32>
    %inserted_slice_366 = tensor.insert_slice %77 into %inserted_slice_365[0, 240, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x720x4x4xf32>
    %inserted_slice_367 = tensor.insert_slice %84 into %inserted_slice_366[0, 288, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x720x4x4xf32>
    %inserted_slice_368 = tensor.insert_slice %91 into %inserted_slice_367[0, 336, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x720x4x4xf32>
    %inserted_slice_369 = tensor.insert_slice %98 into %inserted_slice_368[0, 384, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x720x4x4xf32>
    %inserted_slice_370 = tensor.insert_slice %105 into %inserted_slice_369[0, 432, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x720x4x4xf32>
    %inserted_slice_371 = tensor.insert_slice %112 into %inserted_slice_370[0, 480, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x720x4x4xf32>
    %inserted_slice_372 = tensor.insert_slice %119 into %inserted_slice_371[0, 528, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x720x4x4xf32>
    %inserted_slice_373 = tensor.insert_slice %126 into %inserted_slice_372[0, 576, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x720x4x4xf32>
    %inserted_slice_374 = tensor.insert_slice %133 into %inserted_slice_373[0, 624, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x720x4x4xf32>
    %inserted_slice_375 = tensor.insert_slice %140 into %inserted_slice_374[0, 672, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x720x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_375, %cst_188, %cst_187, %cst_187, %cst_188 : tensor<1x720x4x4xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>) outs(%inserted_slice_375 : tensor<1x720x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x720x4x4xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x720x4x4xf32>) outs(%141 : tensor<1x720x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x720x4x4xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%143, %cst_186 : tensor<1x720x4x4xf32>, tensor<192x720x1x1xf32>) outs(%59 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%144 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x4x4xf32>
    %146 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x192x4x4xf32>) outs(%58 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x4x4xf32>
    %padded_376 = tensor.pad %146 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x4x4xf32> to tensor<1x192x6x6xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_376, %cst_185 : tensor<1x192x6x6xf32>, tensor<48x192x3x3xf32>) outs(%69 : tensor<1x48x4x4xf32>) -> tensor<1x48x4x4xf32>
    %148 = tensor.empty() : tensor<1x768x4x4xf32>
    %inserted_slice_377 = tensor.insert_slice %62 into %148[0, 0, 0, 0] [1, 192, 4, 4] [1, 1, 1, 1] : tensor<1x192x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_378 = tensor.insert_slice %70 into %inserted_slice_377[0, 192, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_379 = tensor.insert_slice %77 into %inserted_slice_378[0, 240, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_380 = tensor.insert_slice %84 into %inserted_slice_379[0, 288, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_381 = tensor.insert_slice %91 into %inserted_slice_380[0, 336, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_382 = tensor.insert_slice %98 into %inserted_slice_381[0, 384, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_383 = tensor.insert_slice %105 into %inserted_slice_382[0, 432, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_384 = tensor.insert_slice %112 into %inserted_slice_383[0, 480, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_385 = tensor.insert_slice %119 into %inserted_slice_384[0, 528, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_386 = tensor.insert_slice %126 into %inserted_slice_385[0, 576, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_387 = tensor.insert_slice %133 into %inserted_slice_386[0, 624, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_388 = tensor.insert_slice %140 into %inserted_slice_387[0, 672, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    %inserted_slice_389 = tensor.insert_slice %147 into %inserted_slice_388[0, 720, 0, 0] [1, 48, 4, 4] [1, 1, 1, 1] : tensor<1x48x4x4xf32> into tensor<1x768x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %149 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_389, %cst_184, %cst_183, %cst_183, %cst_184 : tensor<1x768x4x4xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%inserted_slice_389 : tensor<1x768x4x4xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x768x4x4xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x768x4x4xf32>) outs(%148 : tensor<1x768x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x768x4x4xf32>
    %151 = linalg.fill ins(%cst_251 : f32) outs(%92 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    %152 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%150, %cst_182 : tensor<1x768x4x4xf32>, tensor<384x768x1x1xf32>) outs(%151 : tensor<1x384x4x4xf32>) -> tensor<1x384x4x4xf32>
    %153 = tensor.empty() : tensor<1x384x2x2xf32>
    %154 = linalg.fill ins(%cst_251 : f32) outs(%153 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %155 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%152, %60 : tensor<1x384x4x4xf32>, tensor<2x2xf32>) outs(%154 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %156 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x384x2x2xf32>) outs(%153 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.divf %in, %cst_254 : f32
      linalg.yield %604 : f32
    } -> tensor<1x384x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %157 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_225, %cst_224, %cst_224, %cst_225 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%156 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x384x2x2xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x384x2x2xf32>) outs(%153 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x384x2x2xf32>
    %159 = tensor.empty() : tensor<1x192x2x2xf32>
    %160 = linalg.fill ins(%cst_251 : f32) outs(%159 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%158, %cst_181 : tensor<1x384x2x2xf32>, tensor<192x384x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %162 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%161 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_390 = tensor.pad %163 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %164 = tensor.empty() : tensor<1x48x2x2xf32>
    %165 = linalg.fill ins(%cst_251 : f32) outs(%164 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_390, %cst_180 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %167 = tensor.empty() : tensor<1x432x2x2xf32>
    %inserted_slice_391 = tensor.insert_slice %156 into %167[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x432x2x2xf32>
    %inserted_slice_392 = tensor.insert_slice %166 into %inserted_slice_391[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x432x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %168 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_392, %cst_212, %cst_211, %cst_211, %cst_212 : tensor<1x432x2x2xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>, tensor<432xf32>) outs(%inserted_slice_392 : tensor<1x432x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x432x2x2xf32>
    %169 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168 : tensor<1x432x2x2xf32>) outs(%167 : tensor<1x432x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x432x2x2xf32>
    %170 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%169, %cst_179 : tensor<1x432x2x2xf32>, tensor<192x432x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %171 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%170 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %172 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_393 = tensor.pad %172 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %173 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_393, %cst_178 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %174 = tensor.empty() : tensor<1x480x2x2xf32>
    %inserted_slice_394 = tensor.insert_slice %156 into %174[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_395 = tensor.insert_slice %166 into %inserted_slice_394[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x480x2x2xf32>
    %inserted_slice_396 = tensor.insert_slice %173 into %inserted_slice_395[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x480x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_396, %cst_208, %cst_207, %cst_207, %cst_208 : tensor<1x480x2x2xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%inserted_slice_396 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x480x2x2xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x480x2x2xf32>) outs(%174 : tensor<1x480x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x480x2x2xf32>
    %177 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%176, %cst_177 : tensor<1x480x2x2xf32>, tensor<192x480x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %178 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%177 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_397 = tensor.pad %179 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %180 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_397, %cst_176 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %181 = tensor.empty() : tensor<1x528x2x2xf32>
    %inserted_slice_398 = tensor.insert_slice %156 into %181[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x528x2x2xf32>
    %inserted_slice_399 = tensor.insert_slice %166 into %inserted_slice_398[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x528x2x2xf32>
    %inserted_slice_400 = tensor.insert_slice %173 into %inserted_slice_399[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x528x2x2xf32>
    %inserted_slice_401 = tensor.insert_slice %180 into %inserted_slice_400[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x528x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %182 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_401, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x528x2x2xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>, tensor<528xf32>) outs(%inserted_slice_401 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x528x2x2xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<1x528x2x2xf32>) outs(%181 : tensor<1x528x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x528x2x2xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%183, %cst_175 : tensor<1x528x2x2xf32>, tensor<192x528x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%184 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_402 = tensor.pad %186 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_402, %cst_174 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %188 = tensor.empty() : tensor<1x576x2x2xf32>
    %inserted_slice_403 = tensor.insert_slice %156 into %188[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_404 = tensor.insert_slice %166 into %inserted_slice_403[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_405 = tensor.insert_slice %173 into %inserted_slice_404[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_406 = tensor.insert_slice %180 into %inserted_slice_405[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x576x2x2xf32>
    %inserted_slice_407 = tensor.insert_slice %187 into %inserted_slice_406[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x576x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %189 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_407, %cst_200, %cst_199, %cst_199, %cst_200 : tensor<1x576x2x2xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>, tensor<576xf32>) outs(%inserted_slice_407 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x576x2x2xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x576x2x2xf32>) outs(%188 : tensor<1x576x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x576x2x2xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %cst_173 : tensor<1x576x2x2xf32>, tensor<192x576x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%191 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_408 = tensor.pad %193 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_408, %cst_172 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %195 = tensor.empty() : tensor<1x624x2x2xf32>
    %inserted_slice_409 = tensor.insert_slice %156 into %195[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x624x2x2xf32>
    %inserted_slice_410 = tensor.insert_slice %166 into %inserted_slice_409[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x624x2x2xf32>
    %inserted_slice_411 = tensor.insert_slice %173 into %inserted_slice_410[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x624x2x2xf32>
    %inserted_slice_412 = tensor.insert_slice %180 into %inserted_slice_411[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x624x2x2xf32>
    %inserted_slice_413 = tensor.insert_slice %187 into %inserted_slice_412[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x624x2x2xf32>
    %inserted_slice_414 = tensor.insert_slice %194 into %inserted_slice_413[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x624x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %196 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_414, %cst_196, %cst_195, %cst_195, %cst_196 : tensor<1x624x2x2xf32>, tensor<624xf32>, tensor<624xf32>, tensor<624xf32>, tensor<624xf32>) outs(%inserted_slice_414 : tensor<1x624x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x624x2x2xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x624x2x2xf32>) outs(%195 : tensor<1x624x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x624x2x2xf32>
    %198 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%197, %cst_171 : tensor<1x624x2x2xf32>, tensor<192x624x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%198 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_415 = tensor.pad %200 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %201 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_415, %cst_170 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %202 = tensor.empty() : tensor<1x672x2x2xf32>
    %inserted_slice_416 = tensor.insert_slice %156 into %202[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_417 = tensor.insert_slice %166 into %inserted_slice_416[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_418 = tensor.insert_slice %173 into %inserted_slice_417[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_419 = tensor.insert_slice %180 into %inserted_slice_418[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_420 = tensor.insert_slice %187 into %inserted_slice_419[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_421 = tensor.insert_slice %194 into %inserted_slice_420[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x672x2x2xf32>
    %inserted_slice_422 = tensor.insert_slice %201 into %inserted_slice_421[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x672x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %203 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_422, %cst_192, %cst_191, %cst_191, %cst_192 : tensor<1x672x2x2xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%inserted_slice_422 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x672x2x2xf32>
    %204 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<1x672x2x2xf32>) outs(%202 : tensor<1x672x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x672x2x2xf32>
    %205 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%204, %cst_169 : tensor<1x672x2x2xf32>, tensor<192x672x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %206 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%205 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_423 = tensor.pad %207 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %208 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_423, %cst_168 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %209 = tensor.empty() : tensor<1x720x2x2xf32>
    %inserted_slice_424 = tensor.insert_slice %156 into %209[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x720x2x2xf32>
    %inserted_slice_425 = tensor.insert_slice %166 into %inserted_slice_424[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x720x2x2xf32>
    %inserted_slice_426 = tensor.insert_slice %173 into %inserted_slice_425[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x720x2x2xf32>
    %inserted_slice_427 = tensor.insert_slice %180 into %inserted_slice_426[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x720x2x2xf32>
    %inserted_slice_428 = tensor.insert_slice %187 into %inserted_slice_427[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x720x2x2xf32>
    %inserted_slice_429 = tensor.insert_slice %194 into %inserted_slice_428[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x720x2x2xf32>
    %inserted_slice_430 = tensor.insert_slice %201 into %inserted_slice_429[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x720x2x2xf32>
    %inserted_slice_431 = tensor.insert_slice %208 into %inserted_slice_430[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x720x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %210 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_431, %cst_188, %cst_187, %cst_187, %cst_188 : tensor<1x720x2x2xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>, tensor<720xf32>) outs(%inserted_slice_431 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x720x2x2xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x720x2x2xf32>) outs(%209 : tensor<1x720x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x720x2x2xf32>
    %212 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%211, %cst_167 : tensor<1x720x2x2xf32>, tensor<192x720x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %213 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%212 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %214 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_432 = tensor.pad %214 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_432, %cst_166 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %216 = tensor.empty() : tensor<1x768x2x2xf32>
    %inserted_slice_433 = tensor.insert_slice %156 into %216[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_434 = tensor.insert_slice %166 into %inserted_slice_433[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_435 = tensor.insert_slice %173 into %inserted_slice_434[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_436 = tensor.insert_slice %180 into %inserted_slice_435[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_437 = tensor.insert_slice %187 into %inserted_slice_436[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_438 = tensor.insert_slice %194 into %inserted_slice_437[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_439 = tensor.insert_slice %201 into %inserted_slice_438[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_440 = tensor.insert_slice %208 into %inserted_slice_439[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_441 = tensor.insert_slice %215 into %inserted_slice_440[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x768x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %217 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_441, %cst_184, %cst_183, %cst_183, %cst_184 : tensor<1x768x2x2xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%inserted_slice_441 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x768x2x2xf32>
    %218 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217 : tensor<1x768x2x2xf32>) outs(%216 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x768x2x2xf32>
    %219 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%218, %cst_165 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %220 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%219 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %221 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_442 = tensor.pad %221 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %222 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_442, %cst_164 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %223 = tensor.empty() : tensor<1x816x2x2xf32>
    %inserted_slice_443 = tensor.insert_slice %156 into %223[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x816x2x2xf32>
    %inserted_slice_444 = tensor.insert_slice %166 into %inserted_slice_443[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x816x2x2xf32>
    %inserted_slice_445 = tensor.insert_slice %173 into %inserted_slice_444[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x816x2x2xf32>
    %inserted_slice_446 = tensor.insert_slice %180 into %inserted_slice_445[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x816x2x2xf32>
    %inserted_slice_447 = tensor.insert_slice %187 into %inserted_slice_446[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x816x2x2xf32>
    %inserted_slice_448 = tensor.insert_slice %194 into %inserted_slice_447[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x816x2x2xf32>
    %inserted_slice_449 = tensor.insert_slice %201 into %inserted_slice_448[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x816x2x2xf32>
    %inserted_slice_450 = tensor.insert_slice %208 into %inserted_slice_449[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x816x2x2xf32>
    %inserted_slice_451 = tensor.insert_slice %215 into %inserted_slice_450[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x816x2x2xf32>
    %inserted_slice_452 = tensor.insert_slice %222 into %inserted_slice_451[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x816x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %224 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_452, %cst_163, %cst_162, %cst_162, %cst_163 : tensor<1x816x2x2xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>, tensor<816xf32>) outs(%inserted_slice_452 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x816x2x2xf32>
    %225 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x816x2x2xf32>) outs(%223 : tensor<1x816x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x816x2x2xf32>
    %226 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%225, %cst_161 : tensor<1x816x2x2xf32>, tensor<192x816x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %227 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%226 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %228 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_453 = tensor.pad %228 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %229 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_453, %cst_160 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %230 = tensor.empty() : tensor<1x864x2x2xf32>
    %inserted_slice_454 = tensor.insert_slice %156 into %230[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_455 = tensor.insert_slice %166 into %inserted_slice_454[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_456 = tensor.insert_slice %173 into %inserted_slice_455[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_457 = tensor.insert_slice %180 into %inserted_slice_456[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_458 = tensor.insert_slice %187 into %inserted_slice_457[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_459 = tensor.insert_slice %194 into %inserted_slice_458[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_460 = tensor.insert_slice %201 into %inserted_slice_459[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_461 = tensor.insert_slice %208 into %inserted_slice_460[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_462 = tensor.insert_slice %215 into %inserted_slice_461[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_463 = tensor.insert_slice %222 into %inserted_slice_462[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x864x2x2xf32>
    %inserted_slice_464 = tensor.insert_slice %229 into %inserted_slice_463[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x864x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %231 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_464, %cst_159, %cst_158, %cst_158, %cst_159 : tensor<1x864x2x2xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>, tensor<864xf32>) outs(%inserted_slice_464 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x864x2x2xf32>
    %232 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x864x2x2xf32>) outs(%230 : tensor<1x864x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x864x2x2xf32>
    %233 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%232, %cst_157 : tensor<1x864x2x2xf32>, tensor<192x864x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %234 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%233 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %235 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_465 = tensor.pad %235 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %236 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_465, %cst_156 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %237 = tensor.empty() : tensor<1x912x2x2xf32>
    %inserted_slice_466 = tensor.insert_slice %156 into %237[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x912x2x2xf32>
    %inserted_slice_467 = tensor.insert_slice %166 into %inserted_slice_466[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x912x2x2xf32>
    %inserted_slice_468 = tensor.insert_slice %173 into %inserted_slice_467[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x912x2x2xf32>
    %inserted_slice_469 = tensor.insert_slice %180 into %inserted_slice_468[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x912x2x2xf32>
    %inserted_slice_470 = tensor.insert_slice %187 into %inserted_slice_469[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x912x2x2xf32>
    %inserted_slice_471 = tensor.insert_slice %194 into %inserted_slice_470[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x912x2x2xf32>
    %inserted_slice_472 = tensor.insert_slice %201 into %inserted_slice_471[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x912x2x2xf32>
    %inserted_slice_473 = tensor.insert_slice %208 into %inserted_slice_472[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x912x2x2xf32>
    %inserted_slice_474 = tensor.insert_slice %215 into %inserted_slice_473[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x912x2x2xf32>
    %inserted_slice_475 = tensor.insert_slice %222 into %inserted_slice_474[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x912x2x2xf32>
    %inserted_slice_476 = tensor.insert_slice %229 into %inserted_slice_475[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x912x2x2xf32>
    %inserted_slice_477 = tensor.insert_slice %236 into %inserted_slice_476[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x912x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %238 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_477, %cst_155, %cst_154, %cst_154, %cst_155 : tensor<1x912x2x2xf32>, tensor<912xf32>, tensor<912xf32>, tensor<912xf32>, tensor<912xf32>) outs(%inserted_slice_477 : tensor<1x912x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x912x2x2xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238 : tensor<1x912x2x2xf32>) outs(%237 : tensor<1x912x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x912x2x2xf32>
    %240 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%239, %cst_153 : tensor<1x912x2x2xf32>, tensor<192x912x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %241 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%240 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_478 = tensor.pad %242 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %243 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_478, %cst_152 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %244 = tensor.empty() : tensor<1x960x2x2xf32>
    %inserted_slice_479 = tensor.insert_slice %156 into %244[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_480 = tensor.insert_slice %166 into %inserted_slice_479[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_481 = tensor.insert_slice %173 into %inserted_slice_480[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_482 = tensor.insert_slice %180 into %inserted_slice_481[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_483 = tensor.insert_slice %187 into %inserted_slice_482[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_484 = tensor.insert_slice %194 into %inserted_slice_483[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_485 = tensor.insert_slice %201 into %inserted_slice_484[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_486 = tensor.insert_slice %208 into %inserted_slice_485[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_487 = tensor.insert_slice %215 into %inserted_slice_486[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_488 = tensor.insert_slice %222 into %inserted_slice_487[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_489 = tensor.insert_slice %229 into %inserted_slice_488[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_490 = tensor.insert_slice %236 into %inserted_slice_489[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    %inserted_slice_491 = tensor.insert_slice %243 into %inserted_slice_490[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_491, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%inserted_slice_491 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x960x2x2xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x960x2x2xf32>) outs(%244 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x960x2x2xf32>
    %247 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%246, %cst_149 : tensor<1x960x2x2xf32>, tensor<192x960x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %248 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%247 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_492 = tensor.pad %249 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %250 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_492, %cst_148 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %251 = tensor.empty() : tensor<1x1008x2x2xf32>
    %inserted_slice_493 = tensor.insert_slice %156 into %251[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_494 = tensor.insert_slice %166 into %inserted_slice_493[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_495 = tensor.insert_slice %173 into %inserted_slice_494[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_496 = tensor.insert_slice %180 into %inserted_slice_495[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_497 = tensor.insert_slice %187 into %inserted_slice_496[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_498 = tensor.insert_slice %194 into %inserted_slice_497[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_499 = tensor.insert_slice %201 into %inserted_slice_498[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_500 = tensor.insert_slice %208 into %inserted_slice_499[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_501 = tensor.insert_slice %215 into %inserted_slice_500[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_502 = tensor.insert_slice %222 into %inserted_slice_501[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_503 = tensor.insert_slice %229 into %inserted_slice_502[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_504 = tensor.insert_slice %236 into %inserted_slice_503[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_505 = tensor.insert_slice %243 into %inserted_slice_504[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    %inserted_slice_506 = tensor.insert_slice %250 into %inserted_slice_505[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1008x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %252 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_506, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x1008x2x2xf32>, tensor<1008xf32>, tensor<1008xf32>, tensor<1008xf32>, tensor<1008xf32>) outs(%inserted_slice_506 : tensor<1x1008x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1008x2x2xf32>
    %253 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x1008x2x2xf32>) outs(%251 : tensor<1x1008x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1008x2x2xf32>
    %254 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%253, %cst_145 : tensor<1x1008x2x2xf32>, tensor<192x1008x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %255 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%254 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_507 = tensor.pad %256 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_507, %cst_144 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %258 = tensor.empty() : tensor<1x1056x2x2xf32>
    %inserted_slice_508 = tensor.insert_slice %156 into %258[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_509 = tensor.insert_slice %166 into %inserted_slice_508[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_510 = tensor.insert_slice %173 into %inserted_slice_509[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_511 = tensor.insert_slice %180 into %inserted_slice_510[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_512 = tensor.insert_slice %187 into %inserted_slice_511[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_513 = tensor.insert_slice %194 into %inserted_slice_512[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_514 = tensor.insert_slice %201 into %inserted_slice_513[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_515 = tensor.insert_slice %208 into %inserted_slice_514[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_516 = tensor.insert_slice %215 into %inserted_slice_515[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_517 = tensor.insert_slice %222 into %inserted_slice_516[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_518 = tensor.insert_slice %229 into %inserted_slice_517[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_519 = tensor.insert_slice %236 into %inserted_slice_518[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_520 = tensor.insert_slice %243 into %inserted_slice_519[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_521 = tensor.insert_slice %250 into %inserted_slice_520[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    %inserted_slice_522 = tensor.insert_slice %257 into %inserted_slice_521[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %259 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_522, %cst_143, %cst_142, %cst_142, %cst_143 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%inserted_slice_522 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1056x2x2xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x1056x2x2xf32>) outs(%258 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1056x2x2xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %cst_141 : tensor<1x1056x2x2xf32>, tensor<192x1056x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %262 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%261 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_523 = tensor.pad %263 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_523, %cst_140 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %265 = tensor.empty() : tensor<1x1104x2x2xf32>
    %inserted_slice_524 = tensor.insert_slice %156 into %265[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_525 = tensor.insert_slice %166 into %inserted_slice_524[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_526 = tensor.insert_slice %173 into %inserted_slice_525[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_527 = tensor.insert_slice %180 into %inserted_slice_526[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_528 = tensor.insert_slice %187 into %inserted_slice_527[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_529 = tensor.insert_slice %194 into %inserted_slice_528[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_530 = tensor.insert_slice %201 into %inserted_slice_529[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_531 = tensor.insert_slice %208 into %inserted_slice_530[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_532 = tensor.insert_slice %215 into %inserted_slice_531[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_533 = tensor.insert_slice %222 into %inserted_slice_532[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_534 = tensor.insert_slice %229 into %inserted_slice_533[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_535 = tensor.insert_slice %236 into %inserted_slice_534[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_536 = tensor.insert_slice %243 into %inserted_slice_535[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_537 = tensor.insert_slice %250 into %inserted_slice_536[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_538 = tensor.insert_slice %257 into %inserted_slice_537[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    %inserted_slice_539 = tensor.insert_slice %264 into %inserted_slice_538[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1104x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %266 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_539, %cst_139, %cst_138, %cst_138, %cst_139 : tensor<1x1104x2x2xf32>, tensor<1104xf32>, tensor<1104xf32>, tensor<1104xf32>, tensor<1104xf32>) outs(%inserted_slice_539 : tensor<1x1104x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1104x2x2xf32>
    %267 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266 : tensor<1x1104x2x2xf32>) outs(%265 : tensor<1x1104x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1104x2x2xf32>
    %268 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%267, %cst_137 : tensor<1x1104x2x2xf32>, tensor<192x1104x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %269 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%268 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %270 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_540 = tensor.pad %270 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_540, %cst_136 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %272 = tensor.empty() : tensor<1x1152x2x2xf32>
    %inserted_slice_541 = tensor.insert_slice %156 into %272[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_542 = tensor.insert_slice %166 into %inserted_slice_541[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_543 = tensor.insert_slice %173 into %inserted_slice_542[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_544 = tensor.insert_slice %180 into %inserted_slice_543[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_545 = tensor.insert_slice %187 into %inserted_slice_544[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_546 = tensor.insert_slice %194 into %inserted_slice_545[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_547 = tensor.insert_slice %201 into %inserted_slice_546[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_548 = tensor.insert_slice %208 into %inserted_slice_547[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_549 = tensor.insert_slice %215 into %inserted_slice_548[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_550 = tensor.insert_slice %222 into %inserted_slice_549[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_551 = tensor.insert_slice %229 into %inserted_slice_550[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_552 = tensor.insert_slice %236 into %inserted_slice_551[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_553 = tensor.insert_slice %243 into %inserted_slice_552[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_554 = tensor.insert_slice %250 into %inserted_slice_553[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_555 = tensor.insert_slice %257 into %inserted_slice_554[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_556 = tensor.insert_slice %264 into %inserted_slice_555[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    %inserted_slice_557 = tensor.insert_slice %271 into %inserted_slice_556[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1152x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %273 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_557, %cst_135, %cst_134, %cst_134, %cst_135 : tensor<1x1152x2x2xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%inserted_slice_557 : tensor<1x1152x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1152x2x2xf32>
    %274 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273 : tensor<1x1152x2x2xf32>) outs(%272 : tensor<1x1152x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1152x2x2xf32>
    %275 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%274, %cst_133 : tensor<1x1152x2x2xf32>, tensor<192x1152x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %276 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%275 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %277 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_558 = tensor.pad %277 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_558, %cst_132 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %279 = tensor.empty() : tensor<1x1200x2x2xf32>
    %inserted_slice_559 = tensor.insert_slice %156 into %279[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_560 = tensor.insert_slice %166 into %inserted_slice_559[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_561 = tensor.insert_slice %173 into %inserted_slice_560[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_562 = tensor.insert_slice %180 into %inserted_slice_561[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_563 = tensor.insert_slice %187 into %inserted_slice_562[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_564 = tensor.insert_slice %194 into %inserted_slice_563[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_565 = tensor.insert_slice %201 into %inserted_slice_564[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_566 = tensor.insert_slice %208 into %inserted_slice_565[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_567 = tensor.insert_slice %215 into %inserted_slice_566[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_568 = tensor.insert_slice %222 into %inserted_slice_567[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_569 = tensor.insert_slice %229 into %inserted_slice_568[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_570 = tensor.insert_slice %236 into %inserted_slice_569[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_571 = tensor.insert_slice %243 into %inserted_slice_570[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_572 = tensor.insert_slice %250 into %inserted_slice_571[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_573 = tensor.insert_slice %257 into %inserted_slice_572[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_574 = tensor.insert_slice %264 into %inserted_slice_573[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_575 = tensor.insert_slice %271 into %inserted_slice_574[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    %inserted_slice_576 = tensor.insert_slice %278 into %inserted_slice_575[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1200x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %280 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_576, %cst_131, %cst_130, %cst_130, %cst_131 : tensor<1x1200x2x2xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%inserted_slice_576 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1200x2x2xf32>
    %281 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x1200x2x2xf32>) outs(%279 : tensor<1x1200x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1200x2x2xf32>
    %282 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%281, %cst_129 : tensor<1x1200x2x2xf32>, tensor<192x1200x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %283 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%282 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_577 = tensor.pad %284 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %285 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_577, %cst_128 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %286 = tensor.empty() : tensor<1x1248x2x2xf32>
    %inserted_slice_578 = tensor.insert_slice %156 into %286[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_579 = tensor.insert_slice %166 into %inserted_slice_578[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_580 = tensor.insert_slice %173 into %inserted_slice_579[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_581 = tensor.insert_slice %180 into %inserted_slice_580[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_582 = tensor.insert_slice %187 into %inserted_slice_581[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_583 = tensor.insert_slice %194 into %inserted_slice_582[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_584 = tensor.insert_slice %201 into %inserted_slice_583[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_585 = tensor.insert_slice %208 into %inserted_slice_584[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_586 = tensor.insert_slice %215 into %inserted_slice_585[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_587 = tensor.insert_slice %222 into %inserted_slice_586[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_588 = tensor.insert_slice %229 into %inserted_slice_587[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_589 = tensor.insert_slice %236 into %inserted_slice_588[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_590 = tensor.insert_slice %243 into %inserted_slice_589[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_591 = tensor.insert_slice %250 into %inserted_slice_590[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_592 = tensor.insert_slice %257 into %inserted_slice_591[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_593 = tensor.insert_slice %264 into %inserted_slice_592[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_594 = tensor.insert_slice %271 into %inserted_slice_593[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_595 = tensor.insert_slice %278 into %inserted_slice_594[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    %inserted_slice_596 = tensor.insert_slice %285 into %inserted_slice_595[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1248x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %287 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_596, %cst_127, %cst_126, %cst_126, %cst_127 : tensor<1x1248x2x2xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%inserted_slice_596 : tensor<1x1248x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1248x2x2xf32>
    %288 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x1248x2x2xf32>) outs(%286 : tensor<1x1248x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1248x2x2xf32>
    %289 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%288, %cst_125 : tensor<1x1248x2x2xf32>, tensor<192x1248x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %290 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%289 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %291 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_597 = tensor.pad %291 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %292 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_597, %cst_124 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %293 = tensor.empty() : tensor<1x1296x2x2xf32>
    %inserted_slice_598 = tensor.insert_slice %156 into %293[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_599 = tensor.insert_slice %166 into %inserted_slice_598[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_600 = tensor.insert_slice %173 into %inserted_slice_599[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_601 = tensor.insert_slice %180 into %inserted_slice_600[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_602 = tensor.insert_slice %187 into %inserted_slice_601[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_603 = tensor.insert_slice %194 into %inserted_slice_602[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_604 = tensor.insert_slice %201 into %inserted_slice_603[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_605 = tensor.insert_slice %208 into %inserted_slice_604[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_606 = tensor.insert_slice %215 into %inserted_slice_605[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_607 = tensor.insert_slice %222 into %inserted_slice_606[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_608 = tensor.insert_slice %229 into %inserted_slice_607[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_609 = tensor.insert_slice %236 into %inserted_slice_608[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_610 = tensor.insert_slice %243 into %inserted_slice_609[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_611 = tensor.insert_slice %250 into %inserted_slice_610[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_612 = tensor.insert_slice %257 into %inserted_slice_611[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_613 = tensor.insert_slice %264 into %inserted_slice_612[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_614 = tensor.insert_slice %271 into %inserted_slice_613[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_615 = tensor.insert_slice %278 into %inserted_slice_614[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_616 = tensor.insert_slice %285 into %inserted_slice_615[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    %inserted_slice_617 = tensor.insert_slice %292 into %inserted_slice_616[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1296x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %294 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_617, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x1296x2x2xf32>, tensor<1296xf32>, tensor<1296xf32>, tensor<1296xf32>, tensor<1296xf32>) outs(%inserted_slice_617 : tensor<1x1296x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1296x2x2xf32>
    %295 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<1x1296x2x2xf32>) outs(%293 : tensor<1x1296x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1296x2x2xf32>
    %296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%295, %cst_121 : tensor<1x1296x2x2xf32>, tensor<192x1296x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %297 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%296 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %298 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_618 = tensor.pad %298 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %299 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_618, %cst_120 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %300 = tensor.empty() : tensor<1x1344x2x2xf32>
    %inserted_slice_619 = tensor.insert_slice %156 into %300[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_620 = tensor.insert_slice %166 into %inserted_slice_619[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_621 = tensor.insert_slice %173 into %inserted_slice_620[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_622 = tensor.insert_slice %180 into %inserted_slice_621[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_623 = tensor.insert_slice %187 into %inserted_slice_622[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_624 = tensor.insert_slice %194 into %inserted_slice_623[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_625 = tensor.insert_slice %201 into %inserted_slice_624[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_626 = tensor.insert_slice %208 into %inserted_slice_625[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_627 = tensor.insert_slice %215 into %inserted_slice_626[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_628 = tensor.insert_slice %222 into %inserted_slice_627[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_629 = tensor.insert_slice %229 into %inserted_slice_628[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_630 = tensor.insert_slice %236 into %inserted_slice_629[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_631 = tensor.insert_slice %243 into %inserted_slice_630[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_632 = tensor.insert_slice %250 into %inserted_slice_631[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_633 = tensor.insert_slice %257 into %inserted_slice_632[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_634 = tensor.insert_slice %264 into %inserted_slice_633[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_635 = tensor.insert_slice %271 into %inserted_slice_634[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_636 = tensor.insert_slice %278 into %inserted_slice_635[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_637 = tensor.insert_slice %285 into %inserted_slice_636[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_638 = tensor.insert_slice %292 into %inserted_slice_637[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    %inserted_slice_639 = tensor.insert_slice %299 into %inserted_slice_638[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1344x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %301 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_639, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1344x2x2xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%inserted_slice_639 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1344x2x2xf32>
    %302 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x1344x2x2xf32>) outs(%300 : tensor<1x1344x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1344x2x2xf32>
    %303 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%302, %cst_117 : tensor<1x1344x2x2xf32>, tensor<192x1344x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %304 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%303 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %305 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_640 = tensor.pad %305 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %306 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_640, %cst_116 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %307 = tensor.empty() : tensor<1x1392x2x2xf32>
    %inserted_slice_641 = tensor.insert_slice %156 into %307[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_642 = tensor.insert_slice %166 into %inserted_slice_641[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_643 = tensor.insert_slice %173 into %inserted_slice_642[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_644 = tensor.insert_slice %180 into %inserted_slice_643[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_645 = tensor.insert_slice %187 into %inserted_slice_644[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_646 = tensor.insert_slice %194 into %inserted_slice_645[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_647 = tensor.insert_slice %201 into %inserted_slice_646[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_648 = tensor.insert_slice %208 into %inserted_slice_647[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_649 = tensor.insert_slice %215 into %inserted_slice_648[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_650 = tensor.insert_slice %222 into %inserted_slice_649[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_651 = tensor.insert_slice %229 into %inserted_slice_650[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_652 = tensor.insert_slice %236 into %inserted_slice_651[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_653 = tensor.insert_slice %243 into %inserted_slice_652[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_654 = tensor.insert_slice %250 into %inserted_slice_653[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_655 = tensor.insert_slice %257 into %inserted_slice_654[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_656 = tensor.insert_slice %264 into %inserted_slice_655[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_657 = tensor.insert_slice %271 into %inserted_slice_656[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_658 = tensor.insert_slice %278 into %inserted_slice_657[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_659 = tensor.insert_slice %285 into %inserted_slice_658[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_660 = tensor.insert_slice %292 into %inserted_slice_659[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_661 = tensor.insert_slice %299 into %inserted_slice_660[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    %inserted_slice_662 = tensor.insert_slice %306 into %inserted_slice_661[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1392x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %308 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_662, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x1392x2x2xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%inserted_slice_662 : tensor<1x1392x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1392x2x2xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x1392x2x2xf32>) outs(%307 : tensor<1x1392x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1392x2x2xf32>
    %310 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%309, %cst_113 : tensor<1x1392x2x2xf32>, tensor<192x1392x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %311 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%310 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %312 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_663 = tensor.pad %312 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %313 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_663, %cst_112 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %314 = tensor.empty() : tensor<1x1440x2x2xf32>
    %inserted_slice_664 = tensor.insert_slice %156 into %314[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_665 = tensor.insert_slice %166 into %inserted_slice_664[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_666 = tensor.insert_slice %173 into %inserted_slice_665[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_667 = tensor.insert_slice %180 into %inserted_slice_666[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_668 = tensor.insert_slice %187 into %inserted_slice_667[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_669 = tensor.insert_slice %194 into %inserted_slice_668[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_670 = tensor.insert_slice %201 into %inserted_slice_669[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_671 = tensor.insert_slice %208 into %inserted_slice_670[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_672 = tensor.insert_slice %215 into %inserted_slice_671[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_673 = tensor.insert_slice %222 into %inserted_slice_672[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_674 = tensor.insert_slice %229 into %inserted_slice_673[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_675 = tensor.insert_slice %236 into %inserted_slice_674[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_676 = tensor.insert_slice %243 into %inserted_slice_675[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_677 = tensor.insert_slice %250 into %inserted_slice_676[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_678 = tensor.insert_slice %257 into %inserted_slice_677[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_679 = tensor.insert_slice %264 into %inserted_slice_678[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_680 = tensor.insert_slice %271 into %inserted_slice_679[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_681 = tensor.insert_slice %278 into %inserted_slice_680[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_682 = tensor.insert_slice %285 into %inserted_slice_681[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_683 = tensor.insert_slice %292 into %inserted_slice_682[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_684 = tensor.insert_slice %299 into %inserted_slice_683[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_685 = tensor.insert_slice %306 into %inserted_slice_684[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    %inserted_slice_686 = tensor.insert_slice %313 into %inserted_slice_685[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1440x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %315 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_686, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x1440x2x2xf32>, tensor<1440xf32>, tensor<1440xf32>, tensor<1440xf32>, tensor<1440xf32>) outs(%inserted_slice_686 : tensor<1x1440x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1440x2x2xf32>
    %316 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x1440x2x2xf32>) outs(%314 : tensor<1x1440x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1440x2x2xf32>
    %317 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%316, %cst_109 : tensor<1x1440x2x2xf32>, tensor<192x1440x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %318 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%317 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_687 = tensor.pad %319 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %320 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_687, %cst_108 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %321 = tensor.empty() : tensor<1x1488x2x2xf32>
    %inserted_slice_688 = tensor.insert_slice %156 into %321[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_689 = tensor.insert_slice %166 into %inserted_slice_688[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_690 = tensor.insert_slice %173 into %inserted_slice_689[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_691 = tensor.insert_slice %180 into %inserted_slice_690[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_692 = tensor.insert_slice %187 into %inserted_slice_691[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_693 = tensor.insert_slice %194 into %inserted_slice_692[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_694 = tensor.insert_slice %201 into %inserted_slice_693[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_695 = tensor.insert_slice %208 into %inserted_slice_694[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_696 = tensor.insert_slice %215 into %inserted_slice_695[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_697 = tensor.insert_slice %222 into %inserted_slice_696[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_698 = tensor.insert_slice %229 into %inserted_slice_697[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_699 = tensor.insert_slice %236 into %inserted_slice_698[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_700 = tensor.insert_slice %243 into %inserted_slice_699[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_701 = tensor.insert_slice %250 into %inserted_slice_700[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_702 = tensor.insert_slice %257 into %inserted_slice_701[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_703 = tensor.insert_slice %264 into %inserted_slice_702[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_704 = tensor.insert_slice %271 into %inserted_slice_703[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_705 = tensor.insert_slice %278 into %inserted_slice_704[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_706 = tensor.insert_slice %285 into %inserted_slice_705[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_707 = tensor.insert_slice %292 into %inserted_slice_706[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_708 = tensor.insert_slice %299 into %inserted_slice_707[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_709 = tensor.insert_slice %306 into %inserted_slice_708[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_710 = tensor.insert_slice %313 into %inserted_slice_709[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    %inserted_slice_711 = tensor.insert_slice %320 into %inserted_slice_710[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1488x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %322 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_711, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x1488x2x2xf32>, tensor<1488xf32>, tensor<1488xf32>, tensor<1488xf32>, tensor<1488xf32>) outs(%inserted_slice_711 : tensor<1x1488x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1488x2x2xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x1488x2x2xf32>) outs(%321 : tensor<1x1488x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1488x2x2xf32>
    %324 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%323, %cst_105 : tensor<1x1488x2x2xf32>, tensor<192x1488x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %325 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%324 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_712 = tensor.pad %326 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %327 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_712, %cst_104 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %328 = tensor.empty() : tensor<1x1536x2x2xf32>
    %inserted_slice_713 = tensor.insert_slice %156 into %328[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_714 = tensor.insert_slice %166 into %inserted_slice_713[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_715 = tensor.insert_slice %173 into %inserted_slice_714[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_716 = tensor.insert_slice %180 into %inserted_slice_715[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_717 = tensor.insert_slice %187 into %inserted_slice_716[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_718 = tensor.insert_slice %194 into %inserted_slice_717[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_719 = tensor.insert_slice %201 into %inserted_slice_718[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_720 = tensor.insert_slice %208 into %inserted_slice_719[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_721 = tensor.insert_slice %215 into %inserted_slice_720[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_722 = tensor.insert_slice %222 into %inserted_slice_721[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_723 = tensor.insert_slice %229 into %inserted_slice_722[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_724 = tensor.insert_slice %236 into %inserted_slice_723[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_725 = tensor.insert_slice %243 into %inserted_slice_724[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_726 = tensor.insert_slice %250 into %inserted_slice_725[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_727 = tensor.insert_slice %257 into %inserted_slice_726[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_728 = tensor.insert_slice %264 into %inserted_slice_727[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_729 = tensor.insert_slice %271 into %inserted_slice_728[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_730 = tensor.insert_slice %278 into %inserted_slice_729[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_731 = tensor.insert_slice %285 into %inserted_slice_730[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_732 = tensor.insert_slice %292 into %inserted_slice_731[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_733 = tensor.insert_slice %299 into %inserted_slice_732[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_734 = tensor.insert_slice %306 into %inserted_slice_733[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_735 = tensor.insert_slice %313 into %inserted_slice_734[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_736 = tensor.insert_slice %320 into %inserted_slice_735[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    %inserted_slice_737 = tensor.insert_slice %327 into %inserted_slice_736[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1536x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %329 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_737, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x1536x2x2xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%inserted_slice_737 : tensor<1x1536x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1536x2x2xf32>
    %330 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x1536x2x2xf32>) outs(%328 : tensor<1x1536x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1536x2x2xf32>
    %331 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %cst_101 : tensor<1x1536x2x2xf32>, tensor<192x1536x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %332 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%331 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %333 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_738 = tensor.pad %333 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %334 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_738, %cst_100 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %335 = tensor.empty() : tensor<1x1584x2x2xf32>
    %inserted_slice_739 = tensor.insert_slice %156 into %335[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_740 = tensor.insert_slice %166 into %inserted_slice_739[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_741 = tensor.insert_slice %173 into %inserted_slice_740[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_742 = tensor.insert_slice %180 into %inserted_slice_741[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_743 = tensor.insert_slice %187 into %inserted_slice_742[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_744 = tensor.insert_slice %194 into %inserted_slice_743[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_745 = tensor.insert_slice %201 into %inserted_slice_744[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_746 = tensor.insert_slice %208 into %inserted_slice_745[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_747 = tensor.insert_slice %215 into %inserted_slice_746[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_748 = tensor.insert_slice %222 into %inserted_slice_747[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_749 = tensor.insert_slice %229 into %inserted_slice_748[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_750 = tensor.insert_slice %236 into %inserted_slice_749[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_751 = tensor.insert_slice %243 into %inserted_slice_750[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_752 = tensor.insert_slice %250 into %inserted_slice_751[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_753 = tensor.insert_slice %257 into %inserted_slice_752[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_754 = tensor.insert_slice %264 into %inserted_slice_753[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_755 = tensor.insert_slice %271 into %inserted_slice_754[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_756 = tensor.insert_slice %278 into %inserted_slice_755[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_757 = tensor.insert_slice %285 into %inserted_slice_756[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_758 = tensor.insert_slice %292 into %inserted_slice_757[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_759 = tensor.insert_slice %299 into %inserted_slice_758[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_760 = tensor.insert_slice %306 into %inserted_slice_759[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_761 = tensor.insert_slice %313 into %inserted_slice_760[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_762 = tensor.insert_slice %320 into %inserted_slice_761[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_763 = tensor.insert_slice %327 into %inserted_slice_762[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    %inserted_slice_764 = tensor.insert_slice %334 into %inserted_slice_763[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1584x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %336 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_764, %cst_99, %cst_98, %cst_98, %cst_99 : tensor<1x1584x2x2xf32>, tensor<1584xf32>, tensor<1584xf32>, tensor<1584xf32>, tensor<1584xf32>) outs(%inserted_slice_764 : tensor<1x1584x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1584x2x2xf32>
    %337 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336 : tensor<1x1584x2x2xf32>) outs(%335 : tensor<1x1584x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1584x2x2xf32>
    %338 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%337, %cst_97 : tensor<1x1584x2x2xf32>, tensor<192x1584x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %339 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%338 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %340 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_765 = tensor.pad %340 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %341 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_765, %cst_96 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %342 = tensor.empty() : tensor<1x1632x2x2xf32>
    %inserted_slice_766 = tensor.insert_slice %156 into %342[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_767 = tensor.insert_slice %166 into %inserted_slice_766[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_768 = tensor.insert_slice %173 into %inserted_slice_767[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_769 = tensor.insert_slice %180 into %inserted_slice_768[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_770 = tensor.insert_slice %187 into %inserted_slice_769[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_771 = tensor.insert_slice %194 into %inserted_slice_770[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_772 = tensor.insert_slice %201 into %inserted_slice_771[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_773 = tensor.insert_slice %208 into %inserted_slice_772[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_774 = tensor.insert_slice %215 into %inserted_slice_773[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_775 = tensor.insert_slice %222 into %inserted_slice_774[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_776 = tensor.insert_slice %229 into %inserted_slice_775[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_777 = tensor.insert_slice %236 into %inserted_slice_776[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_778 = tensor.insert_slice %243 into %inserted_slice_777[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_779 = tensor.insert_slice %250 into %inserted_slice_778[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_780 = tensor.insert_slice %257 into %inserted_slice_779[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_781 = tensor.insert_slice %264 into %inserted_slice_780[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_782 = tensor.insert_slice %271 into %inserted_slice_781[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_783 = tensor.insert_slice %278 into %inserted_slice_782[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_784 = tensor.insert_slice %285 into %inserted_slice_783[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_785 = tensor.insert_slice %292 into %inserted_slice_784[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_786 = tensor.insert_slice %299 into %inserted_slice_785[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_787 = tensor.insert_slice %306 into %inserted_slice_786[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_788 = tensor.insert_slice %313 into %inserted_slice_787[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_789 = tensor.insert_slice %320 into %inserted_slice_788[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_790 = tensor.insert_slice %327 into %inserted_slice_789[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_791 = tensor.insert_slice %334 into %inserted_slice_790[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    %inserted_slice_792 = tensor.insert_slice %341 into %inserted_slice_791[0, 1584, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1632x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %343 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_792, %cst_95, %cst_94, %cst_94, %cst_95 : tensor<1x1632x2x2xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%inserted_slice_792 : tensor<1x1632x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1632x2x2xf32>
    %344 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<1x1632x2x2xf32>) outs(%342 : tensor<1x1632x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1632x2x2xf32>
    %345 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%344, %cst_93 : tensor<1x1632x2x2xf32>, tensor<192x1632x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %346 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%345 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_793 = tensor.pad %347 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %348 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_793, %cst_92 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %349 = tensor.empty() : tensor<1x1680x2x2xf32>
    %inserted_slice_794 = tensor.insert_slice %156 into %349[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_795 = tensor.insert_slice %166 into %inserted_slice_794[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_796 = tensor.insert_slice %173 into %inserted_slice_795[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_797 = tensor.insert_slice %180 into %inserted_slice_796[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_798 = tensor.insert_slice %187 into %inserted_slice_797[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_799 = tensor.insert_slice %194 into %inserted_slice_798[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_800 = tensor.insert_slice %201 into %inserted_slice_799[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_801 = tensor.insert_slice %208 into %inserted_slice_800[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_802 = tensor.insert_slice %215 into %inserted_slice_801[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_803 = tensor.insert_slice %222 into %inserted_slice_802[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_804 = tensor.insert_slice %229 into %inserted_slice_803[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_805 = tensor.insert_slice %236 into %inserted_slice_804[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_806 = tensor.insert_slice %243 into %inserted_slice_805[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_807 = tensor.insert_slice %250 into %inserted_slice_806[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_808 = tensor.insert_slice %257 into %inserted_slice_807[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_809 = tensor.insert_slice %264 into %inserted_slice_808[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_810 = tensor.insert_slice %271 into %inserted_slice_809[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_811 = tensor.insert_slice %278 into %inserted_slice_810[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_812 = tensor.insert_slice %285 into %inserted_slice_811[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_813 = tensor.insert_slice %292 into %inserted_slice_812[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_814 = tensor.insert_slice %299 into %inserted_slice_813[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_815 = tensor.insert_slice %306 into %inserted_slice_814[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_816 = tensor.insert_slice %313 into %inserted_slice_815[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_817 = tensor.insert_slice %320 into %inserted_slice_816[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_818 = tensor.insert_slice %327 into %inserted_slice_817[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_819 = tensor.insert_slice %334 into %inserted_slice_818[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_820 = tensor.insert_slice %341 into %inserted_slice_819[0, 1584, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    %inserted_slice_821 = tensor.insert_slice %348 into %inserted_slice_820[0, 1632, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1680x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %350 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_821, %cst_91, %cst_90, %cst_90, %cst_91 : tensor<1x1680x2x2xf32>, tensor<1680xf32>, tensor<1680xf32>, tensor<1680xf32>, tensor<1680xf32>) outs(%inserted_slice_821 : tensor<1x1680x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1680x2x2xf32>
    %351 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x1680x2x2xf32>) outs(%349 : tensor<1x1680x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1680x2x2xf32>
    %352 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%351, %cst_89 : tensor<1x1680x2x2xf32>, tensor<192x1680x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %353 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%352 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %354 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_822 = tensor.pad %354 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %355 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_822, %cst_88 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %356 = tensor.empty() : tensor<1x1728x2x2xf32>
    %inserted_slice_823 = tensor.insert_slice %156 into %356[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_824 = tensor.insert_slice %166 into %inserted_slice_823[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_825 = tensor.insert_slice %173 into %inserted_slice_824[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_826 = tensor.insert_slice %180 into %inserted_slice_825[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_827 = tensor.insert_slice %187 into %inserted_slice_826[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_828 = tensor.insert_slice %194 into %inserted_slice_827[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_829 = tensor.insert_slice %201 into %inserted_slice_828[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_830 = tensor.insert_slice %208 into %inserted_slice_829[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_831 = tensor.insert_slice %215 into %inserted_slice_830[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_832 = tensor.insert_slice %222 into %inserted_slice_831[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_833 = tensor.insert_slice %229 into %inserted_slice_832[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_834 = tensor.insert_slice %236 into %inserted_slice_833[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_835 = tensor.insert_slice %243 into %inserted_slice_834[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_836 = tensor.insert_slice %250 into %inserted_slice_835[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_837 = tensor.insert_slice %257 into %inserted_slice_836[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_838 = tensor.insert_slice %264 into %inserted_slice_837[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_839 = tensor.insert_slice %271 into %inserted_slice_838[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_840 = tensor.insert_slice %278 into %inserted_slice_839[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_841 = tensor.insert_slice %285 into %inserted_slice_840[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_842 = tensor.insert_slice %292 into %inserted_slice_841[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_843 = tensor.insert_slice %299 into %inserted_slice_842[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_844 = tensor.insert_slice %306 into %inserted_slice_843[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_845 = tensor.insert_slice %313 into %inserted_slice_844[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_846 = tensor.insert_slice %320 into %inserted_slice_845[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_847 = tensor.insert_slice %327 into %inserted_slice_846[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_848 = tensor.insert_slice %334 into %inserted_slice_847[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_849 = tensor.insert_slice %341 into %inserted_slice_848[0, 1584, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_850 = tensor.insert_slice %348 into %inserted_slice_849[0, 1632, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    %inserted_slice_851 = tensor.insert_slice %355 into %inserted_slice_850[0, 1680, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1728x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %357 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_851, %cst_87, %cst_86, %cst_86, %cst_87 : tensor<1x1728x2x2xf32>, tensor<1728xf32>, tensor<1728xf32>, tensor<1728xf32>, tensor<1728xf32>) outs(%inserted_slice_851 : tensor<1x1728x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1728x2x2xf32>
    %358 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357 : tensor<1x1728x2x2xf32>) outs(%356 : tensor<1x1728x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1728x2x2xf32>
    %359 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%358, %cst_85 : tensor<1x1728x2x2xf32>, tensor<192x1728x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %360 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%359 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %361 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_852 = tensor.pad %361 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %362 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_852, %cst_84 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %363 = tensor.empty() : tensor<1x1776x2x2xf32>
    %inserted_slice_853 = tensor.insert_slice %156 into %363[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_854 = tensor.insert_slice %166 into %inserted_slice_853[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_855 = tensor.insert_slice %173 into %inserted_slice_854[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_856 = tensor.insert_slice %180 into %inserted_slice_855[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_857 = tensor.insert_slice %187 into %inserted_slice_856[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_858 = tensor.insert_slice %194 into %inserted_slice_857[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_859 = tensor.insert_slice %201 into %inserted_slice_858[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_860 = tensor.insert_slice %208 into %inserted_slice_859[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_861 = tensor.insert_slice %215 into %inserted_slice_860[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_862 = tensor.insert_slice %222 into %inserted_slice_861[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_863 = tensor.insert_slice %229 into %inserted_slice_862[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_864 = tensor.insert_slice %236 into %inserted_slice_863[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_865 = tensor.insert_slice %243 into %inserted_slice_864[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_866 = tensor.insert_slice %250 into %inserted_slice_865[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_867 = tensor.insert_slice %257 into %inserted_slice_866[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_868 = tensor.insert_slice %264 into %inserted_slice_867[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_869 = tensor.insert_slice %271 into %inserted_slice_868[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_870 = tensor.insert_slice %278 into %inserted_slice_869[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_871 = tensor.insert_slice %285 into %inserted_slice_870[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_872 = tensor.insert_slice %292 into %inserted_slice_871[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_873 = tensor.insert_slice %299 into %inserted_slice_872[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_874 = tensor.insert_slice %306 into %inserted_slice_873[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_875 = tensor.insert_slice %313 into %inserted_slice_874[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_876 = tensor.insert_slice %320 into %inserted_slice_875[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_877 = tensor.insert_slice %327 into %inserted_slice_876[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_878 = tensor.insert_slice %334 into %inserted_slice_877[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_879 = tensor.insert_slice %341 into %inserted_slice_878[0, 1584, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_880 = tensor.insert_slice %348 into %inserted_slice_879[0, 1632, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_881 = tensor.insert_slice %355 into %inserted_slice_880[0, 1680, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    %inserted_slice_882 = tensor.insert_slice %362 into %inserted_slice_881[0, 1728, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1776x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %364 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_882, %cst_83, %cst_82, %cst_82, %cst_83 : tensor<1x1776x2x2xf32>, tensor<1776xf32>, tensor<1776xf32>, tensor<1776xf32>, tensor<1776xf32>) outs(%inserted_slice_882 : tensor<1x1776x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1776x2x2xf32>
    %365 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x1776x2x2xf32>) outs(%363 : tensor<1x1776x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1776x2x2xf32>
    %366 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%365, %cst_81 : tensor<1x1776x2x2xf32>, tensor<192x1776x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %367 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%366 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %368 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_883 = tensor.pad %368 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %369 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_883, %cst_80 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %370 = tensor.empty() : tensor<1x1824x2x2xf32>
    %inserted_slice_884 = tensor.insert_slice %156 into %370[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_885 = tensor.insert_slice %166 into %inserted_slice_884[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_886 = tensor.insert_slice %173 into %inserted_slice_885[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_887 = tensor.insert_slice %180 into %inserted_slice_886[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_888 = tensor.insert_slice %187 into %inserted_slice_887[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_889 = tensor.insert_slice %194 into %inserted_slice_888[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_890 = tensor.insert_slice %201 into %inserted_slice_889[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_891 = tensor.insert_slice %208 into %inserted_slice_890[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_892 = tensor.insert_slice %215 into %inserted_slice_891[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_893 = tensor.insert_slice %222 into %inserted_slice_892[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_894 = tensor.insert_slice %229 into %inserted_slice_893[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_895 = tensor.insert_slice %236 into %inserted_slice_894[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_896 = tensor.insert_slice %243 into %inserted_slice_895[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_897 = tensor.insert_slice %250 into %inserted_slice_896[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_898 = tensor.insert_slice %257 into %inserted_slice_897[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_899 = tensor.insert_slice %264 into %inserted_slice_898[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_900 = tensor.insert_slice %271 into %inserted_slice_899[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_901 = tensor.insert_slice %278 into %inserted_slice_900[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_902 = tensor.insert_slice %285 into %inserted_slice_901[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_903 = tensor.insert_slice %292 into %inserted_slice_902[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_904 = tensor.insert_slice %299 into %inserted_slice_903[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_905 = tensor.insert_slice %306 into %inserted_slice_904[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_906 = tensor.insert_slice %313 into %inserted_slice_905[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_907 = tensor.insert_slice %320 into %inserted_slice_906[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_908 = tensor.insert_slice %327 into %inserted_slice_907[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_909 = tensor.insert_slice %334 into %inserted_slice_908[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_910 = tensor.insert_slice %341 into %inserted_slice_909[0, 1584, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_911 = tensor.insert_slice %348 into %inserted_slice_910[0, 1632, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_912 = tensor.insert_slice %355 into %inserted_slice_911[0, 1680, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_913 = tensor.insert_slice %362 into %inserted_slice_912[0, 1728, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    %inserted_slice_914 = tensor.insert_slice %369 into %inserted_slice_913[0, 1776, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1824x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %371 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_914, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x1824x2x2xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%inserted_slice_914 : tensor<1x1824x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1824x2x2xf32>
    %372 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<1x1824x2x2xf32>) outs(%370 : tensor<1x1824x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1824x2x2xf32>
    %373 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%372, %cst_77 : tensor<1x1824x2x2xf32>, tensor<192x1824x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %374 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%373 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %375 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_915 = tensor.pad %375 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %376 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_915, %cst_76 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %377 = tensor.empty() : tensor<1x1872x2x2xf32>
    %inserted_slice_916 = tensor.insert_slice %156 into %377[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_917 = tensor.insert_slice %166 into %inserted_slice_916[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_918 = tensor.insert_slice %173 into %inserted_slice_917[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_919 = tensor.insert_slice %180 into %inserted_slice_918[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_920 = tensor.insert_slice %187 into %inserted_slice_919[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_921 = tensor.insert_slice %194 into %inserted_slice_920[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_922 = tensor.insert_slice %201 into %inserted_slice_921[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_923 = tensor.insert_slice %208 into %inserted_slice_922[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_924 = tensor.insert_slice %215 into %inserted_slice_923[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_925 = tensor.insert_slice %222 into %inserted_slice_924[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_926 = tensor.insert_slice %229 into %inserted_slice_925[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_927 = tensor.insert_slice %236 into %inserted_slice_926[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_928 = tensor.insert_slice %243 into %inserted_slice_927[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_929 = tensor.insert_slice %250 into %inserted_slice_928[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_930 = tensor.insert_slice %257 into %inserted_slice_929[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_931 = tensor.insert_slice %264 into %inserted_slice_930[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_932 = tensor.insert_slice %271 into %inserted_slice_931[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_933 = tensor.insert_slice %278 into %inserted_slice_932[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_934 = tensor.insert_slice %285 into %inserted_slice_933[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_935 = tensor.insert_slice %292 into %inserted_slice_934[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_936 = tensor.insert_slice %299 into %inserted_slice_935[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_937 = tensor.insert_slice %306 into %inserted_slice_936[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_938 = tensor.insert_slice %313 into %inserted_slice_937[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_939 = tensor.insert_slice %320 into %inserted_slice_938[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_940 = tensor.insert_slice %327 into %inserted_slice_939[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_941 = tensor.insert_slice %334 into %inserted_slice_940[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_942 = tensor.insert_slice %341 into %inserted_slice_941[0, 1584, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_943 = tensor.insert_slice %348 into %inserted_slice_942[0, 1632, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_944 = tensor.insert_slice %355 into %inserted_slice_943[0, 1680, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_945 = tensor.insert_slice %362 into %inserted_slice_944[0, 1728, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_946 = tensor.insert_slice %369 into %inserted_slice_945[0, 1776, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    %inserted_slice_947 = tensor.insert_slice %376 into %inserted_slice_946[0, 1824, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1872x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %378 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_947, %cst_75, %cst_74, %cst_74, %cst_75 : tensor<1x1872x2x2xf32>, tensor<1872xf32>, tensor<1872xf32>, tensor<1872xf32>, tensor<1872xf32>) outs(%inserted_slice_947 : tensor<1x1872x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1872x2x2xf32>
    %379 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378 : tensor<1x1872x2x2xf32>) outs(%377 : tensor<1x1872x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1872x2x2xf32>
    %380 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%379, %cst_73 : tensor<1x1872x2x2xf32>, tensor<192x1872x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %381 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%380 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %382 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_948 = tensor.pad %382 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %383 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_948, %cst_72 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %384 = tensor.empty() : tensor<1x1920x2x2xf32>
    %inserted_slice_949 = tensor.insert_slice %156 into %384[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_950 = tensor.insert_slice %166 into %inserted_slice_949[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_951 = tensor.insert_slice %173 into %inserted_slice_950[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_952 = tensor.insert_slice %180 into %inserted_slice_951[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_953 = tensor.insert_slice %187 into %inserted_slice_952[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_954 = tensor.insert_slice %194 into %inserted_slice_953[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_955 = tensor.insert_slice %201 into %inserted_slice_954[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_956 = tensor.insert_slice %208 into %inserted_slice_955[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_957 = tensor.insert_slice %215 into %inserted_slice_956[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_958 = tensor.insert_slice %222 into %inserted_slice_957[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_959 = tensor.insert_slice %229 into %inserted_slice_958[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_960 = tensor.insert_slice %236 into %inserted_slice_959[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_961 = tensor.insert_slice %243 into %inserted_slice_960[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_962 = tensor.insert_slice %250 into %inserted_slice_961[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_963 = tensor.insert_slice %257 into %inserted_slice_962[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_964 = tensor.insert_slice %264 into %inserted_slice_963[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_965 = tensor.insert_slice %271 into %inserted_slice_964[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_966 = tensor.insert_slice %278 into %inserted_slice_965[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_967 = tensor.insert_slice %285 into %inserted_slice_966[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_968 = tensor.insert_slice %292 into %inserted_slice_967[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_969 = tensor.insert_slice %299 into %inserted_slice_968[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_970 = tensor.insert_slice %306 into %inserted_slice_969[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_971 = tensor.insert_slice %313 into %inserted_slice_970[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_972 = tensor.insert_slice %320 into %inserted_slice_971[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_973 = tensor.insert_slice %327 into %inserted_slice_972[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_974 = tensor.insert_slice %334 into %inserted_slice_973[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_975 = tensor.insert_slice %341 into %inserted_slice_974[0, 1584, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_976 = tensor.insert_slice %348 into %inserted_slice_975[0, 1632, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_977 = tensor.insert_slice %355 into %inserted_slice_976[0, 1680, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_978 = tensor.insert_slice %362 into %inserted_slice_977[0, 1728, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_979 = tensor.insert_slice %369 into %inserted_slice_978[0, 1776, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_980 = tensor.insert_slice %376 into %inserted_slice_979[0, 1824, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    %inserted_slice_981 = tensor.insert_slice %383 into %inserted_slice_980[0, 1872, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1920x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %385 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_981, %cst_71, %cst_70, %cst_70, %cst_71 : tensor<1x1920x2x2xf32>, tensor<1920xf32>, tensor<1920xf32>, tensor<1920xf32>, tensor<1920xf32>) outs(%inserted_slice_981 : tensor<1x1920x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1920x2x2xf32>
    %386 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385 : tensor<1x1920x2x2xf32>) outs(%384 : tensor<1x1920x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1920x2x2xf32>
    %387 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%386, %cst_69 : tensor<1x1920x2x2xf32>, tensor<192x1920x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %388 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%387 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %389 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_982 = tensor.pad %389 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %390 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_982, %cst_68 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %391 = tensor.empty() : tensor<1x1968x2x2xf32>
    %inserted_slice_983 = tensor.insert_slice %156 into %391[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_984 = tensor.insert_slice %166 into %inserted_slice_983[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_985 = tensor.insert_slice %173 into %inserted_slice_984[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_986 = tensor.insert_slice %180 into %inserted_slice_985[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_987 = tensor.insert_slice %187 into %inserted_slice_986[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_988 = tensor.insert_slice %194 into %inserted_slice_987[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_989 = tensor.insert_slice %201 into %inserted_slice_988[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_990 = tensor.insert_slice %208 into %inserted_slice_989[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_991 = tensor.insert_slice %215 into %inserted_slice_990[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_992 = tensor.insert_slice %222 into %inserted_slice_991[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_993 = tensor.insert_slice %229 into %inserted_slice_992[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_994 = tensor.insert_slice %236 into %inserted_slice_993[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_995 = tensor.insert_slice %243 into %inserted_slice_994[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_996 = tensor.insert_slice %250 into %inserted_slice_995[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_997 = tensor.insert_slice %257 into %inserted_slice_996[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_998 = tensor.insert_slice %264 into %inserted_slice_997[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_999 = tensor.insert_slice %271 into %inserted_slice_998[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1000 = tensor.insert_slice %278 into %inserted_slice_999[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1001 = tensor.insert_slice %285 into %inserted_slice_1000[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1002 = tensor.insert_slice %292 into %inserted_slice_1001[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1003 = tensor.insert_slice %299 into %inserted_slice_1002[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1004 = tensor.insert_slice %306 into %inserted_slice_1003[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1005 = tensor.insert_slice %313 into %inserted_slice_1004[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1006 = tensor.insert_slice %320 into %inserted_slice_1005[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1007 = tensor.insert_slice %327 into %inserted_slice_1006[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1008 = tensor.insert_slice %334 into %inserted_slice_1007[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1009 = tensor.insert_slice %341 into %inserted_slice_1008[0, 1584, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1010 = tensor.insert_slice %348 into %inserted_slice_1009[0, 1632, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1011 = tensor.insert_slice %355 into %inserted_slice_1010[0, 1680, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1012 = tensor.insert_slice %362 into %inserted_slice_1011[0, 1728, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1013 = tensor.insert_slice %369 into %inserted_slice_1012[0, 1776, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1014 = tensor.insert_slice %376 into %inserted_slice_1013[0, 1824, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1015 = tensor.insert_slice %383 into %inserted_slice_1014[0, 1872, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    %inserted_slice_1016 = tensor.insert_slice %390 into %inserted_slice_1015[0, 1920, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x1968x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %392 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1016, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x1968x2x2xf32>, tensor<1968xf32>, tensor<1968xf32>, tensor<1968xf32>, tensor<1968xf32>) outs(%inserted_slice_1016 : tensor<1x1968x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1968x2x2xf32>
    %393 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392 : tensor<1x1968x2x2xf32>) outs(%391 : tensor<1x1968x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1968x2x2xf32>
    %394 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%393, %cst_65 : tensor<1x1968x2x2xf32>, tensor<192x1968x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %395 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%394 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %396 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_1017 = tensor.pad %396 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %397 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1017, %cst_64 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %398 = tensor.empty() : tensor<1x2016x2x2xf32>
    %inserted_slice_1018 = tensor.insert_slice %156 into %398[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1019 = tensor.insert_slice %166 into %inserted_slice_1018[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1020 = tensor.insert_slice %173 into %inserted_slice_1019[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1021 = tensor.insert_slice %180 into %inserted_slice_1020[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1022 = tensor.insert_slice %187 into %inserted_slice_1021[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1023 = tensor.insert_slice %194 into %inserted_slice_1022[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1024 = tensor.insert_slice %201 into %inserted_slice_1023[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1025 = tensor.insert_slice %208 into %inserted_slice_1024[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1026 = tensor.insert_slice %215 into %inserted_slice_1025[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1027 = tensor.insert_slice %222 into %inserted_slice_1026[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1028 = tensor.insert_slice %229 into %inserted_slice_1027[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1029 = tensor.insert_slice %236 into %inserted_slice_1028[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1030 = tensor.insert_slice %243 into %inserted_slice_1029[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1031 = tensor.insert_slice %250 into %inserted_slice_1030[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1032 = tensor.insert_slice %257 into %inserted_slice_1031[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1033 = tensor.insert_slice %264 into %inserted_slice_1032[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1034 = tensor.insert_slice %271 into %inserted_slice_1033[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1035 = tensor.insert_slice %278 into %inserted_slice_1034[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1036 = tensor.insert_slice %285 into %inserted_slice_1035[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1037 = tensor.insert_slice %292 into %inserted_slice_1036[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1038 = tensor.insert_slice %299 into %inserted_slice_1037[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1039 = tensor.insert_slice %306 into %inserted_slice_1038[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1040 = tensor.insert_slice %313 into %inserted_slice_1039[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1041 = tensor.insert_slice %320 into %inserted_slice_1040[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1042 = tensor.insert_slice %327 into %inserted_slice_1041[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1043 = tensor.insert_slice %334 into %inserted_slice_1042[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1044 = tensor.insert_slice %341 into %inserted_slice_1043[0, 1584, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1045 = tensor.insert_slice %348 into %inserted_slice_1044[0, 1632, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1046 = tensor.insert_slice %355 into %inserted_slice_1045[0, 1680, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1047 = tensor.insert_slice %362 into %inserted_slice_1046[0, 1728, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1048 = tensor.insert_slice %369 into %inserted_slice_1047[0, 1776, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1049 = tensor.insert_slice %376 into %inserted_slice_1048[0, 1824, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1050 = tensor.insert_slice %383 into %inserted_slice_1049[0, 1872, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1051 = tensor.insert_slice %390 into %inserted_slice_1050[0, 1920, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    %inserted_slice_1052 = tensor.insert_slice %397 into %inserted_slice_1051[0, 1968, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2016x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %399 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1052, %cst_63, %cst_62, %cst_62, %cst_63 : tensor<1x2016x2x2xf32>, tensor<2016xf32>, tensor<2016xf32>, tensor<2016xf32>, tensor<2016xf32>) outs(%inserted_slice_1052 : tensor<1x2016x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x2016x2x2xf32>
    %400 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x2016x2x2xf32>) outs(%398 : tensor<1x2016x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x2016x2x2xf32>
    %401 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%400, %cst_61 : tensor<1x2016x2x2xf32>, tensor<192x2016x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %402 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%401 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %403 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_1053 = tensor.pad %403 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %404 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1053, %cst_60 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %405 = tensor.empty() : tensor<1x2064x2x2xf32>
    %inserted_slice_1054 = tensor.insert_slice %156 into %405[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1055 = tensor.insert_slice %166 into %inserted_slice_1054[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1056 = tensor.insert_slice %173 into %inserted_slice_1055[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1057 = tensor.insert_slice %180 into %inserted_slice_1056[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1058 = tensor.insert_slice %187 into %inserted_slice_1057[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1059 = tensor.insert_slice %194 into %inserted_slice_1058[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1060 = tensor.insert_slice %201 into %inserted_slice_1059[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1061 = tensor.insert_slice %208 into %inserted_slice_1060[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1062 = tensor.insert_slice %215 into %inserted_slice_1061[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1063 = tensor.insert_slice %222 into %inserted_slice_1062[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1064 = tensor.insert_slice %229 into %inserted_slice_1063[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1065 = tensor.insert_slice %236 into %inserted_slice_1064[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1066 = tensor.insert_slice %243 into %inserted_slice_1065[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1067 = tensor.insert_slice %250 into %inserted_slice_1066[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1068 = tensor.insert_slice %257 into %inserted_slice_1067[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1069 = tensor.insert_slice %264 into %inserted_slice_1068[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1070 = tensor.insert_slice %271 into %inserted_slice_1069[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1071 = tensor.insert_slice %278 into %inserted_slice_1070[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1072 = tensor.insert_slice %285 into %inserted_slice_1071[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1073 = tensor.insert_slice %292 into %inserted_slice_1072[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1074 = tensor.insert_slice %299 into %inserted_slice_1073[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1075 = tensor.insert_slice %306 into %inserted_slice_1074[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1076 = tensor.insert_slice %313 into %inserted_slice_1075[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1077 = tensor.insert_slice %320 into %inserted_slice_1076[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1078 = tensor.insert_slice %327 into %inserted_slice_1077[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1079 = tensor.insert_slice %334 into %inserted_slice_1078[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1080 = tensor.insert_slice %341 into %inserted_slice_1079[0, 1584, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1081 = tensor.insert_slice %348 into %inserted_slice_1080[0, 1632, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1082 = tensor.insert_slice %355 into %inserted_slice_1081[0, 1680, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1083 = tensor.insert_slice %362 into %inserted_slice_1082[0, 1728, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1084 = tensor.insert_slice %369 into %inserted_slice_1083[0, 1776, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1085 = tensor.insert_slice %376 into %inserted_slice_1084[0, 1824, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1086 = tensor.insert_slice %383 into %inserted_slice_1085[0, 1872, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1087 = tensor.insert_slice %390 into %inserted_slice_1086[0, 1920, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1088 = tensor.insert_slice %397 into %inserted_slice_1087[0, 1968, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    %inserted_slice_1089 = tensor.insert_slice %404 into %inserted_slice_1088[0, 2016, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2064x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %406 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1089, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x2064x2x2xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%inserted_slice_1089 : tensor<1x2064x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x2064x2x2xf32>
    %407 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406 : tensor<1x2064x2x2xf32>) outs(%405 : tensor<1x2064x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x2064x2x2xf32>
    %408 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%407, %cst_57 : tensor<1x2064x2x2xf32>, tensor<192x2064x1x1xf32>) outs(%160 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %409 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%408 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x2x2xf32>
    %410 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409 : tensor<1x192x2x2xf32>) outs(%159 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_1090 = tensor.pad %410 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x2x2xf32> to tensor<1x192x4x4xf32>
    %411 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1090, %cst_56 : tensor<1x192x4x4xf32>, tensor<48x192x3x3xf32>) outs(%165 : tensor<1x48x2x2xf32>) -> tensor<1x48x2x2xf32>
    %412 = tensor.empty() : tensor<1x2112x2x2xf32>
    %inserted_slice_1091 = tensor.insert_slice %156 into %412[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1092 = tensor.insert_slice %166 into %inserted_slice_1091[0, 384, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1093 = tensor.insert_slice %173 into %inserted_slice_1092[0, 432, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1094 = tensor.insert_slice %180 into %inserted_slice_1093[0, 480, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1095 = tensor.insert_slice %187 into %inserted_slice_1094[0, 528, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1096 = tensor.insert_slice %194 into %inserted_slice_1095[0, 576, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1097 = tensor.insert_slice %201 into %inserted_slice_1096[0, 624, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1098 = tensor.insert_slice %208 into %inserted_slice_1097[0, 672, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1099 = tensor.insert_slice %215 into %inserted_slice_1098[0, 720, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1100 = tensor.insert_slice %222 into %inserted_slice_1099[0, 768, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1101 = tensor.insert_slice %229 into %inserted_slice_1100[0, 816, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1102 = tensor.insert_slice %236 into %inserted_slice_1101[0, 864, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1103 = tensor.insert_slice %243 into %inserted_slice_1102[0, 912, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1104 = tensor.insert_slice %250 into %inserted_slice_1103[0, 960, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1105 = tensor.insert_slice %257 into %inserted_slice_1104[0, 1008, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1106 = tensor.insert_slice %264 into %inserted_slice_1105[0, 1056, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1107 = tensor.insert_slice %271 into %inserted_slice_1106[0, 1104, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1108 = tensor.insert_slice %278 into %inserted_slice_1107[0, 1152, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1109 = tensor.insert_slice %285 into %inserted_slice_1108[0, 1200, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1110 = tensor.insert_slice %292 into %inserted_slice_1109[0, 1248, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1111 = tensor.insert_slice %299 into %inserted_slice_1110[0, 1296, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1112 = tensor.insert_slice %306 into %inserted_slice_1111[0, 1344, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1113 = tensor.insert_slice %313 into %inserted_slice_1112[0, 1392, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1114 = tensor.insert_slice %320 into %inserted_slice_1113[0, 1440, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1115 = tensor.insert_slice %327 into %inserted_slice_1114[0, 1488, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1116 = tensor.insert_slice %334 into %inserted_slice_1115[0, 1536, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1117 = tensor.insert_slice %341 into %inserted_slice_1116[0, 1584, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1118 = tensor.insert_slice %348 into %inserted_slice_1117[0, 1632, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1119 = tensor.insert_slice %355 into %inserted_slice_1118[0, 1680, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1120 = tensor.insert_slice %362 into %inserted_slice_1119[0, 1728, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1121 = tensor.insert_slice %369 into %inserted_slice_1120[0, 1776, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1122 = tensor.insert_slice %376 into %inserted_slice_1121[0, 1824, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1123 = tensor.insert_slice %383 into %inserted_slice_1122[0, 1872, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1124 = tensor.insert_slice %390 into %inserted_slice_1123[0, 1920, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1125 = tensor.insert_slice %397 into %inserted_slice_1124[0, 1968, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1126 = tensor.insert_slice %404 into %inserted_slice_1125[0, 2016, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    %inserted_slice_1127 = tensor.insert_slice %411 into %inserted_slice_1126[0, 2064, 0, 0] [1, 48, 2, 2] [1, 1, 1, 1] : tensor<1x48x2x2xf32> into tensor<1x2112x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %413 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1127, %cst_55, %cst_54, %cst_54, %cst_55 : tensor<1x2112x2x2xf32>, tensor<2112xf32>, tensor<2112xf32>, tensor<2112xf32>, tensor<2112xf32>) outs(%inserted_slice_1127 : tensor<1x2112x2x2xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x2112x2x2xf32>
    %414 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413 : tensor<1x2112x2x2xf32>) outs(%412 : tensor<1x2112x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x2112x2x2xf32>
    %415 = linalg.fill ins(%cst_251 : f32) outs(%258 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    %416 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%414, %cst_53 : tensor<1x2112x2x2xf32>, tensor<1056x2112x1x1xf32>) outs(%415 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    %417 = tensor.empty() : tensor<1x1056x1x1xf32>
    %418 = linalg.fill ins(%cst_251 : f32) outs(%417 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %419 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%416, %60 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%418 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %420 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x1056x1x1xf32>) outs(%417 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.divf %in, %cst_254 : f32
      linalg.yield %604 : f32
    } -> tensor<1x1056x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %421 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420, %cst_143, %cst_142, %cst_142, %cst_143 : tensor<1x1056x1x1xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%420 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1056x1x1xf32>
    %422 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421 : tensor<1x1056x1x1xf32>) outs(%417 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1056x1x1xf32>
    %423 = tensor.empty() : tensor<1x192x1x1xf32>
    %424 = linalg.fill ins(%cst_251 : f32) outs(%423 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %425 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%422, %cst_52 : tensor<1x1056x1x1xf32>, tensor<192x1056x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %426 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%425 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %427 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1128 = tensor.pad %427 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %428 = tensor.empty() : tensor<1x48x1x1xf32>
    %429 = linalg.fill ins(%cst_251 : f32) outs(%428 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %430 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1128, %cst_51 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %431 = tensor.empty() : tensor<1x1104x1x1xf32>
    %inserted_slice_1129 = tensor.insert_slice %420 into %431[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1104x1x1xf32>
    %inserted_slice_1130 = tensor.insert_slice %430 into %inserted_slice_1129[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1104x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %432 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1130, %cst_139, %cst_138, %cst_138, %cst_139 : tensor<1x1104x1x1xf32>, tensor<1104xf32>, tensor<1104xf32>, tensor<1104xf32>, tensor<1104xf32>) outs(%inserted_slice_1130 : tensor<1x1104x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1104x1x1xf32>
    %433 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432 : tensor<1x1104x1x1xf32>) outs(%431 : tensor<1x1104x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1104x1x1xf32>
    %434 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%433, %cst_50 : tensor<1x1104x1x1xf32>, tensor<192x1104x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %435 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%434 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %436 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1131 = tensor.pad %436 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %437 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1131, %cst_49 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %438 = tensor.empty() : tensor<1x1152x1x1xf32>
    %inserted_slice_1132 = tensor.insert_slice %420 into %438[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1152x1x1xf32>
    %inserted_slice_1133 = tensor.insert_slice %430 into %inserted_slice_1132[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1152x1x1xf32>
    %inserted_slice_1134 = tensor.insert_slice %437 into %inserted_slice_1133[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1152x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %439 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1134, %cst_135, %cst_134, %cst_134, %cst_135 : tensor<1x1152x1x1xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%inserted_slice_1134 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1152x1x1xf32>
    %440 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439 : tensor<1x1152x1x1xf32>) outs(%438 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1152x1x1xf32>
    %441 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%440, %cst_48 : tensor<1x1152x1x1xf32>, tensor<192x1152x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %442 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%441 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %443 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1135 = tensor.pad %443 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %444 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1135, %cst_47 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %445 = tensor.empty() : tensor<1x1200x1x1xf32>
    %inserted_slice_1136 = tensor.insert_slice %420 into %445[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1200x1x1xf32>
    %inserted_slice_1137 = tensor.insert_slice %430 into %inserted_slice_1136[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1200x1x1xf32>
    %inserted_slice_1138 = tensor.insert_slice %437 into %inserted_slice_1137[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1200x1x1xf32>
    %inserted_slice_1139 = tensor.insert_slice %444 into %inserted_slice_1138[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1200x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %446 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1139, %cst_131, %cst_130, %cst_130, %cst_131 : tensor<1x1200x1x1xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>, tensor<1200xf32>) outs(%inserted_slice_1139 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1200x1x1xf32>
    %447 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446 : tensor<1x1200x1x1xf32>) outs(%445 : tensor<1x1200x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1200x1x1xf32>
    %448 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%447, %cst_46 : tensor<1x1200x1x1xf32>, tensor<192x1200x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %449 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%448 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %450 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1140 = tensor.pad %450 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %451 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1140, %cst_45 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %452 = tensor.empty() : tensor<1x1248x1x1xf32>
    %inserted_slice_1141 = tensor.insert_slice %420 into %452[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1142 = tensor.insert_slice %430 into %inserted_slice_1141[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1143 = tensor.insert_slice %437 into %inserted_slice_1142[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1144 = tensor.insert_slice %444 into %inserted_slice_1143[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1248x1x1xf32>
    %inserted_slice_1145 = tensor.insert_slice %451 into %inserted_slice_1144[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1248x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %453 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1145, %cst_127, %cst_126, %cst_126, %cst_127 : tensor<1x1248x1x1xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>, tensor<1248xf32>) outs(%inserted_slice_1145 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1248x1x1xf32>
    %454 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453 : tensor<1x1248x1x1xf32>) outs(%452 : tensor<1x1248x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1248x1x1xf32>
    %455 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%454, %cst_44 : tensor<1x1248x1x1xf32>, tensor<192x1248x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %456 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%455 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %457 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1146 = tensor.pad %457 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %458 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1146, %cst_43 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %459 = tensor.empty() : tensor<1x1296x1x1xf32>
    %inserted_slice_1147 = tensor.insert_slice %420 into %459[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1296x1x1xf32>
    %inserted_slice_1148 = tensor.insert_slice %430 into %inserted_slice_1147[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1296x1x1xf32>
    %inserted_slice_1149 = tensor.insert_slice %437 into %inserted_slice_1148[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1296x1x1xf32>
    %inserted_slice_1150 = tensor.insert_slice %444 into %inserted_slice_1149[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1296x1x1xf32>
    %inserted_slice_1151 = tensor.insert_slice %451 into %inserted_slice_1150[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1296x1x1xf32>
    %inserted_slice_1152 = tensor.insert_slice %458 into %inserted_slice_1151[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1296x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %460 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1152, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x1296x1x1xf32>, tensor<1296xf32>, tensor<1296xf32>, tensor<1296xf32>, tensor<1296xf32>) outs(%inserted_slice_1152 : tensor<1x1296x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1296x1x1xf32>
    %461 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460 : tensor<1x1296x1x1xf32>) outs(%459 : tensor<1x1296x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1296x1x1xf32>
    %462 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%461, %cst_42 : tensor<1x1296x1x1xf32>, tensor<192x1296x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %463 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%462 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %464 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1153 = tensor.pad %464 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %465 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1153, %cst_41 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %466 = tensor.empty() : tensor<1x1344x1x1xf32>
    %inserted_slice_1154 = tensor.insert_slice %420 into %466[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1155 = tensor.insert_slice %430 into %inserted_slice_1154[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1156 = tensor.insert_slice %437 into %inserted_slice_1155[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1157 = tensor.insert_slice %444 into %inserted_slice_1156[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1158 = tensor.insert_slice %451 into %inserted_slice_1157[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1159 = tensor.insert_slice %458 into %inserted_slice_1158[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1344x1x1xf32>
    %inserted_slice_1160 = tensor.insert_slice %465 into %inserted_slice_1159[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1344x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %467 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1160, %cst_119, %cst_118, %cst_118, %cst_119 : tensor<1x1344x1x1xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%inserted_slice_1160 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1344x1x1xf32>
    %468 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467 : tensor<1x1344x1x1xf32>) outs(%466 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1344x1x1xf32>
    %469 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%468, %cst_40 : tensor<1x1344x1x1xf32>, tensor<192x1344x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %470 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%469 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %471 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1161 = tensor.pad %471 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %472 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1161, %cst_39 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %473 = tensor.empty() : tensor<1x1392x1x1xf32>
    %inserted_slice_1162 = tensor.insert_slice %420 into %473[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1392x1x1xf32>
    %inserted_slice_1163 = tensor.insert_slice %430 into %inserted_slice_1162[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1392x1x1xf32>
    %inserted_slice_1164 = tensor.insert_slice %437 into %inserted_slice_1163[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1392x1x1xf32>
    %inserted_slice_1165 = tensor.insert_slice %444 into %inserted_slice_1164[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1392x1x1xf32>
    %inserted_slice_1166 = tensor.insert_slice %451 into %inserted_slice_1165[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1392x1x1xf32>
    %inserted_slice_1167 = tensor.insert_slice %458 into %inserted_slice_1166[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1392x1x1xf32>
    %inserted_slice_1168 = tensor.insert_slice %465 into %inserted_slice_1167[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1392x1x1xf32>
    %inserted_slice_1169 = tensor.insert_slice %472 into %inserted_slice_1168[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1392x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %474 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1169, %cst_115, %cst_114, %cst_114, %cst_115 : tensor<1x1392x1x1xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>, tensor<1392xf32>) outs(%inserted_slice_1169 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1392x1x1xf32>
    %475 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474 : tensor<1x1392x1x1xf32>) outs(%473 : tensor<1x1392x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1392x1x1xf32>
    %476 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%475, %cst_38 : tensor<1x1392x1x1xf32>, tensor<192x1392x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %477 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%476 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %478 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1170 = tensor.pad %478 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %479 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1170, %cst_37 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %480 = tensor.empty() : tensor<1x1440x1x1xf32>
    %inserted_slice_1171 = tensor.insert_slice %420 into %480[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1172 = tensor.insert_slice %430 into %inserted_slice_1171[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1173 = tensor.insert_slice %437 into %inserted_slice_1172[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1174 = tensor.insert_slice %444 into %inserted_slice_1173[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1175 = tensor.insert_slice %451 into %inserted_slice_1174[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1176 = tensor.insert_slice %458 into %inserted_slice_1175[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1177 = tensor.insert_slice %465 into %inserted_slice_1176[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1178 = tensor.insert_slice %472 into %inserted_slice_1177[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1440x1x1xf32>
    %inserted_slice_1179 = tensor.insert_slice %479 into %inserted_slice_1178[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1440x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %481 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1179, %cst_111, %cst_110, %cst_110, %cst_111 : tensor<1x1440x1x1xf32>, tensor<1440xf32>, tensor<1440xf32>, tensor<1440xf32>, tensor<1440xf32>) outs(%inserted_slice_1179 : tensor<1x1440x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1440x1x1xf32>
    %482 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481 : tensor<1x1440x1x1xf32>) outs(%480 : tensor<1x1440x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1440x1x1xf32>
    %483 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%482, %cst_36 : tensor<1x1440x1x1xf32>, tensor<192x1440x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %484 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%483 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %485 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1180 = tensor.pad %485 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %486 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1180, %cst_35 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %487 = tensor.empty() : tensor<1x1488x1x1xf32>
    %inserted_slice_1181 = tensor.insert_slice %420 into %487[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1488x1x1xf32>
    %inserted_slice_1182 = tensor.insert_slice %430 into %inserted_slice_1181[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1488x1x1xf32>
    %inserted_slice_1183 = tensor.insert_slice %437 into %inserted_slice_1182[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1488x1x1xf32>
    %inserted_slice_1184 = tensor.insert_slice %444 into %inserted_slice_1183[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1488x1x1xf32>
    %inserted_slice_1185 = tensor.insert_slice %451 into %inserted_slice_1184[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1488x1x1xf32>
    %inserted_slice_1186 = tensor.insert_slice %458 into %inserted_slice_1185[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1488x1x1xf32>
    %inserted_slice_1187 = tensor.insert_slice %465 into %inserted_slice_1186[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1488x1x1xf32>
    %inserted_slice_1188 = tensor.insert_slice %472 into %inserted_slice_1187[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1488x1x1xf32>
    %inserted_slice_1189 = tensor.insert_slice %479 into %inserted_slice_1188[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1488x1x1xf32>
    %inserted_slice_1190 = tensor.insert_slice %486 into %inserted_slice_1189[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1488x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %488 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1190, %cst_107, %cst_106, %cst_106, %cst_107 : tensor<1x1488x1x1xf32>, tensor<1488xf32>, tensor<1488xf32>, tensor<1488xf32>, tensor<1488xf32>) outs(%inserted_slice_1190 : tensor<1x1488x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1488x1x1xf32>
    %489 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488 : tensor<1x1488x1x1xf32>) outs(%487 : tensor<1x1488x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1488x1x1xf32>
    %490 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%489, %cst_34 : tensor<1x1488x1x1xf32>, tensor<192x1488x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %491 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%490 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %492 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1191 = tensor.pad %492 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %493 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1191, %cst_33 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %494 = tensor.empty() : tensor<1x1536x1x1xf32>
    %inserted_slice_1192 = tensor.insert_slice %420 into %494[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1193 = tensor.insert_slice %430 into %inserted_slice_1192[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1194 = tensor.insert_slice %437 into %inserted_slice_1193[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1195 = tensor.insert_slice %444 into %inserted_slice_1194[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1196 = tensor.insert_slice %451 into %inserted_slice_1195[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1197 = tensor.insert_slice %458 into %inserted_slice_1196[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1198 = tensor.insert_slice %465 into %inserted_slice_1197[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1199 = tensor.insert_slice %472 into %inserted_slice_1198[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1200 = tensor.insert_slice %479 into %inserted_slice_1199[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1201 = tensor.insert_slice %486 into %inserted_slice_1200[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1536x1x1xf32>
    %inserted_slice_1202 = tensor.insert_slice %493 into %inserted_slice_1201[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1536x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %495 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1202, %cst_103, %cst_102, %cst_102, %cst_103 : tensor<1x1536x1x1xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%inserted_slice_1202 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1536x1x1xf32>
    %496 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495 : tensor<1x1536x1x1xf32>) outs(%494 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1536x1x1xf32>
    %497 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%496, %cst_32 : tensor<1x1536x1x1xf32>, tensor<192x1536x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %498 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%497 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %499 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1203 = tensor.pad %499 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %500 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1203, %cst_31 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %501 = tensor.empty() : tensor<1x1584x1x1xf32>
    %inserted_slice_1204 = tensor.insert_slice %420 into %501[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1584x1x1xf32>
    %inserted_slice_1205 = tensor.insert_slice %430 into %inserted_slice_1204[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1584x1x1xf32>
    %inserted_slice_1206 = tensor.insert_slice %437 into %inserted_slice_1205[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1584x1x1xf32>
    %inserted_slice_1207 = tensor.insert_slice %444 into %inserted_slice_1206[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1584x1x1xf32>
    %inserted_slice_1208 = tensor.insert_slice %451 into %inserted_slice_1207[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1584x1x1xf32>
    %inserted_slice_1209 = tensor.insert_slice %458 into %inserted_slice_1208[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1584x1x1xf32>
    %inserted_slice_1210 = tensor.insert_slice %465 into %inserted_slice_1209[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1584x1x1xf32>
    %inserted_slice_1211 = tensor.insert_slice %472 into %inserted_slice_1210[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1584x1x1xf32>
    %inserted_slice_1212 = tensor.insert_slice %479 into %inserted_slice_1211[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1584x1x1xf32>
    %inserted_slice_1213 = tensor.insert_slice %486 into %inserted_slice_1212[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1584x1x1xf32>
    %inserted_slice_1214 = tensor.insert_slice %493 into %inserted_slice_1213[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1584x1x1xf32>
    %inserted_slice_1215 = tensor.insert_slice %500 into %inserted_slice_1214[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1584x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %502 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1215, %cst_99, %cst_98, %cst_98, %cst_99 : tensor<1x1584x1x1xf32>, tensor<1584xf32>, tensor<1584xf32>, tensor<1584xf32>, tensor<1584xf32>) outs(%inserted_slice_1215 : tensor<1x1584x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1584x1x1xf32>
    %503 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502 : tensor<1x1584x1x1xf32>) outs(%501 : tensor<1x1584x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1584x1x1xf32>
    %504 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%503, %cst_30 : tensor<1x1584x1x1xf32>, tensor<192x1584x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %505 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%504 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %506 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1216 = tensor.pad %506 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %507 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1216, %cst_29 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %508 = tensor.empty() : tensor<1x1632x1x1xf32>
    %inserted_slice_1217 = tensor.insert_slice %420 into %508[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1218 = tensor.insert_slice %430 into %inserted_slice_1217[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1219 = tensor.insert_slice %437 into %inserted_slice_1218[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1220 = tensor.insert_slice %444 into %inserted_slice_1219[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1221 = tensor.insert_slice %451 into %inserted_slice_1220[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1222 = tensor.insert_slice %458 into %inserted_slice_1221[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1223 = tensor.insert_slice %465 into %inserted_slice_1222[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1224 = tensor.insert_slice %472 into %inserted_slice_1223[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1225 = tensor.insert_slice %479 into %inserted_slice_1224[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1226 = tensor.insert_slice %486 into %inserted_slice_1225[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1227 = tensor.insert_slice %493 into %inserted_slice_1226[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1228 = tensor.insert_slice %500 into %inserted_slice_1227[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    %inserted_slice_1229 = tensor.insert_slice %507 into %inserted_slice_1228[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1632x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %509 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1229, %cst_95, %cst_94, %cst_94, %cst_95 : tensor<1x1632x1x1xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>, tensor<1632xf32>) outs(%inserted_slice_1229 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1632x1x1xf32>
    %510 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509 : tensor<1x1632x1x1xf32>) outs(%508 : tensor<1x1632x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1632x1x1xf32>
    %511 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%510, %cst_28 : tensor<1x1632x1x1xf32>, tensor<192x1632x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %512 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%511 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %513 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1230 = tensor.pad %513 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %514 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1230, %cst_27 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %515 = tensor.empty() : tensor<1x1680x1x1xf32>
    %inserted_slice_1231 = tensor.insert_slice %420 into %515[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1232 = tensor.insert_slice %430 into %inserted_slice_1231[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1233 = tensor.insert_slice %437 into %inserted_slice_1232[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1234 = tensor.insert_slice %444 into %inserted_slice_1233[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1235 = tensor.insert_slice %451 into %inserted_slice_1234[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1236 = tensor.insert_slice %458 into %inserted_slice_1235[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1237 = tensor.insert_slice %465 into %inserted_slice_1236[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1238 = tensor.insert_slice %472 into %inserted_slice_1237[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1239 = tensor.insert_slice %479 into %inserted_slice_1238[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1240 = tensor.insert_slice %486 into %inserted_slice_1239[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1241 = tensor.insert_slice %493 into %inserted_slice_1240[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1242 = tensor.insert_slice %500 into %inserted_slice_1241[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1243 = tensor.insert_slice %507 into %inserted_slice_1242[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    %inserted_slice_1244 = tensor.insert_slice %514 into %inserted_slice_1243[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1680x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %516 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1244, %cst_91, %cst_90, %cst_90, %cst_91 : tensor<1x1680x1x1xf32>, tensor<1680xf32>, tensor<1680xf32>, tensor<1680xf32>, tensor<1680xf32>) outs(%inserted_slice_1244 : tensor<1x1680x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1680x1x1xf32>
    %517 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516 : tensor<1x1680x1x1xf32>) outs(%515 : tensor<1x1680x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1680x1x1xf32>
    %518 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%517, %cst_26 : tensor<1x1680x1x1xf32>, tensor<192x1680x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %519 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%518 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %520 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1245 = tensor.pad %520 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %521 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1245, %cst_25 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %522 = tensor.empty() : tensor<1x1728x1x1xf32>
    %inserted_slice_1246 = tensor.insert_slice %420 into %522[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1247 = tensor.insert_slice %430 into %inserted_slice_1246[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1248 = tensor.insert_slice %437 into %inserted_slice_1247[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1249 = tensor.insert_slice %444 into %inserted_slice_1248[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1250 = tensor.insert_slice %451 into %inserted_slice_1249[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1251 = tensor.insert_slice %458 into %inserted_slice_1250[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1252 = tensor.insert_slice %465 into %inserted_slice_1251[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1253 = tensor.insert_slice %472 into %inserted_slice_1252[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1254 = tensor.insert_slice %479 into %inserted_slice_1253[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1255 = tensor.insert_slice %486 into %inserted_slice_1254[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1256 = tensor.insert_slice %493 into %inserted_slice_1255[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1257 = tensor.insert_slice %500 into %inserted_slice_1256[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1258 = tensor.insert_slice %507 into %inserted_slice_1257[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1259 = tensor.insert_slice %514 into %inserted_slice_1258[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    %inserted_slice_1260 = tensor.insert_slice %521 into %inserted_slice_1259[0, 1680, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1728x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %523 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1260, %cst_87, %cst_86, %cst_86, %cst_87 : tensor<1x1728x1x1xf32>, tensor<1728xf32>, tensor<1728xf32>, tensor<1728xf32>, tensor<1728xf32>) outs(%inserted_slice_1260 : tensor<1x1728x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1728x1x1xf32>
    %524 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523 : tensor<1x1728x1x1xf32>) outs(%522 : tensor<1x1728x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1728x1x1xf32>
    %525 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%524, %cst_24 : tensor<1x1728x1x1xf32>, tensor<192x1728x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %526 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%525 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %527 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1261 = tensor.pad %527 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %528 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1261, %cst_23 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %529 = tensor.empty() : tensor<1x1776x1x1xf32>
    %inserted_slice_1262 = tensor.insert_slice %420 into %529[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1263 = tensor.insert_slice %430 into %inserted_slice_1262[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1264 = tensor.insert_slice %437 into %inserted_slice_1263[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1265 = tensor.insert_slice %444 into %inserted_slice_1264[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1266 = tensor.insert_slice %451 into %inserted_slice_1265[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1267 = tensor.insert_slice %458 into %inserted_slice_1266[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1268 = tensor.insert_slice %465 into %inserted_slice_1267[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1269 = tensor.insert_slice %472 into %inserted_slice_1268[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1270 = tensor.insert_slice %479 into %inserted_slice_1269[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1271 = tensor.insert_slice %486 into %inserted_slice_1270[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1272 = tensor.insert_slice %493 into %inserted_slice_1271[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1273 = tensor.insert_slice %500 into %inserted_slice_1272[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1274 = tensor.insert_slice %507 into %inserted_slice_1273[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1275 = tensor.insert_slice %514 into %inserted_slice_1274[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1276 = tensor.insert_slice %521 into %inserted_slice_1275[0, 1680, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    %inserted_slice_1277 = tensor.insert_slice %528 into %inserted_slice_1276[0, 1728, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1776x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %530 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1277, %cst_83, %cst_82, %cst_82, %cst_83 : tensor<1x1776x1x1xf32>, tensor<1776xf32>, tensor<1776xf32>, tensor<1776xf32>, tensor<1776xf32>) outs(%inserted_slice_1277 : tensor<1x1776x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1776x1x1xf32>
    %531 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530 : tensor<1x1776x1x1xf32>) outs(%529 : tensor<1x1776x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1776x1x1xf32>
    %532 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%531, %cst_22 : tensor<1x1776x1x1xf32>, tensor<192x1776x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %533 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%532 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %534 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1278 = tensor.pad %534 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %535 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1278, %cst_21 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %536 = tensor.empty() : tensor<1x1824x1x1xf32>
    %inserted_slice_1279 = tensor.insert_slice %420 into %536[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1280 = tensor.insert_slice %430 into %inserted_slice_1279[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1281 = tensor.insert_slice %437 into %inserted_slice_1280[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1282 = tensor.insert_slice %444 into %inserted_slice_1281[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1283 = tensor.insert_slice %451 into %inserted_slice_1282[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1284 = tensor.insert_slice %458 into %inserted_slice_1283[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1285 = tensor.insert_slice %465 into %inserted_slice_1284[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1286 = tensor.insert_slice %472 into %inserted_slice_1285[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1287 = tensor.insert_slice %479 into %inserted_slice_1286[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1288 = tensor.insert_slice %486 into %inserted_slice_1287[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1289 = tensor.insert_slice %493 into %inserted_slice_1288[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1290 = tensor.insert_slice %500 into %inserted_slice_1289[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1291 = tensor.insert_slice %507 into %inserted_slice_1290[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1292 = tensor.insert_slice %514 into %inserted_slice_1291[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1293 = tensor.insert_slice %521 into %inserted_slice_1292[0, 1680, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1294 = tensor.insert_slice %528 into %inserted_slice_1293[0, 1728, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    %inserted_slice_1295 = tensor.insert_slice %535 into %inserted_slice_1294[0, 1776, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %537 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1295, %cst_79, %cst_78, %cst_78, %cst_79 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%inserted_slice_1295 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1824x1x1xf32>
    %538 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537 : tensor<1x1824x1x1xf32>) outs(%536 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1824x1x1xf32>
    %539 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%538, %cst_20 : tensor<1x1824x1x1xf32>, tensor<192x1824x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %540 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%539 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %541 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1296 = tensor.pad %541 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %542 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1296, %cst_19 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %543 = tensor.empty() : tensor<1x1872x1x1xf32>
    %inserted_slice_1297 = tensor.insert_slice %420 into %543[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1298 = tensor.insert_slice %430 into %inserted_slice_1297[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1299 = tensor.insert_slice %437 into %inserted_slice_1298[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1300 = tensor.insert_slice %444 into %inserted_slice_1299[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1301 = tensor.insert_slice %451 into %inserted_slice_1300[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1302 = tensor.insert_slice %458 into %inserted_slice_1301[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1303 = tensor.insert_slice %465 into %inserted_slice_1302[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1304 = tensor.insert_slice %472 into %inserted_slice_1303[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1305 = tensor.insert_slice %479 into %inserted_slice_1304[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1306 = tensor.insert_slice %486 into %inserted_slice_1305[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1307 = tensor.insert_slice %493 into %inserted_slice_1306[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1308 = tensor.insert_slice %500 into %inserted_slice_1307[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1309 = tensor.insert_slice %507 into %inserted_slice_1308[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1310 = tensor.insert_slice %514 into %inserted_slice_1309[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1311 = tensor.insert_slice %521 into %inserted_slice_1310[0, 1680, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1312 = tensor.insert_slice %528 into %inserted_slice_1311[0, 1728, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1313 = tensor.insert_slice %535 into %inserted_slice_1312[0, 1776, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    %inserted_slice_1314 = tensor.insert_slice %542 into %inserted_slice_1313[0, 1824, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1872x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %544 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1314, %cst_75, %cst_74, %cst_74, %cst_75 : tensor<1x1872x1x1xf32>, tensor<1872xf32>, tensor<1872xf32>, tensor<1872xf32>, tensor<1872xf32>) outs(%inserted_slice_1314 : tensor<1x1872x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1872x1x1xf32>
    %545 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544 : tensor<1x1872x1x1xf32>) outs(%543 : tensor<1x1872x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1872x1x1xf32>
    %546 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%545, %cst_18 : tensor<1x1872x1x1xf32>, tensor<192x1872x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %547 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%546 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %548 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%547 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1315 = tensor.pad %548 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %549 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1315, %cst_17 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %550 = tensor.empty() : tensor<1x1920x1x1xf32>
    %inserted_slice_1316 = tensor.insert_slice %420 into %550[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1317 = tensor.insert_slice %430 into %inserted_slice_1316[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1318 = tensor.insert_slice %437 into %inserted_slice_1317[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1319 = tensor.insert_slice %444 into %inserted_slice_1318[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1320 = tensor.insert_slice %451 into %inserted_slice_1319[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1321 = tensor.insert_slice %458 into %inserted_slice_1320[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1322 = tensor.insert_slice %465 into %inserted_slice_1321[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1323 = tensor.insert_slice %472 into %inserted_slice_1322[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1324 = tensor.insert_slice %479 into %inserted_slice_1323[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1325 = tensor.insert_slice %486 into %inserted_slice_1324[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1326 = tensor.insert_slice %493 into %inserted_slice_1325[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1327 = tensor.insert_slice %500 into %inserted_slice_1326[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1328 = tensor.insert_slice %507 into %inserted_slice_1327[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1329 = tensor.insert_slice %514 into %inserted_slice_1328[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1330 = tensor.insert_slice %521 into %inserted_slice_1329[0, 1680, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1331 = tensor.insert_slice %528 into %inserted_slice_1330[0, 1728, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1332 = tensor.insert_slice %535 into %inserted_slice_1331[0, 1776, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1333 = tensor.insert_slice %542 into %inserted_slice_1332[0, 1824, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    %inserted_slice_1334 = tensor.insert_slice %549 into %inserted_slice_1333[0, 1872, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1920x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %551 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1334, %cst_71, %cst_70, %cst_70, %cst_71 : tensor<1x1920x1x1xf32>, tensor<1920xf32>, tensor<1920xf32>, tensor<1920xf32>, tensor<1920xf32>) outs(%inserted_slice_1334 : tensor<1x1920x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1920x1x1xf32>
    %552 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551 : tensor<1x1920x1x1xf32>) outs(%550 : tensor<1x1920x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1920x1x1xf32>
    %553 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%552, %cst_16 : tensor<1x1920x1x1xf32>, tensor<192x1920x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %554 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%553 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %555 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1335 = tensor.pad %555 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %556 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1335, %cst_15 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %557 = tensor.empty() : tensor<1x1968x1x1xf32>
    %inserted_slice_1336 = tensor.insert_slice %420 into %557[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1337 = tensor.insert_slice %430 into %inserted_slice_1336[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1338 = tensor.insert_slice %437 into %inserted_slice_1337[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1339 = tensor.insert_slice %444 into %inserted_slice_1338[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1340 = tensor.insert_slice %451 into %inserted_slice_1339[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1341 = tensor.insert_slice %458 into %inserted_slice_1340[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1342 = tensor.insert_slice %465 into %inserted_slice_1341[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1343 = tensor.insert_slice %472 into %inserted_slice_1342[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1344 = tensor.insert_slice %479 into %inserted_slice_1343[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1345 = tensor.insert_slice %486 into %inserted_slice_1344[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1346 = tensor.insert_slice %493 into %inserted_slice_1345[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1347 = tensor.insert_slice %500 into %inserted_slice_1346[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1348 = tensor.insert_slice %507 into %inserted_slice_1347[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1349 = tensor.insert_slice %514 into %inserted_slice_1348[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1350 = tensor.insert_slice %521 into %inserted_slice_1349[0, 1680, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1351 = tensor.insert_slice %528 into %inserted_slice_1350[0, 1728, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1352 = tensor.insert_slice %535 into %inserted_slice_1351[0, 1776, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1353 = tensor.insert_slice %542 into %inserted_slice_1352[0, 1824, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1354 = tensor.insert_slice %549 into %inserted_slice_1353[0, 1872, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    %inserted_slice_1355 = tensor.insert_slice %556 into %inserted_slice_1354[0, 1920, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x1968x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %558 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1355, %cst_67, %cst_66, %cst_66, %cst_67 : tensor<1x1968x1x1xf32>, tensor<1968xf32>, tensor<1968xf32>, tensor<1968xf32>, tensor<1968xf32>) outs(%inserted_slice_1355 : tensor<1x1968x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x1968x1x1xf32>
    %559 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558 : tensor<1x1968x1x1xf32>) outs(%557 : tensor<1x1968x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x1968x1x1xf32>
    %560 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%559, %cst_14 : tensor<1x1968x1x1xf32>, tensor<192x1968x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %561 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%560 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %562 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1356 = tensor.pad %562 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %563 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1356, %cst_13 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %564 = tensor.empty() : tensor<1x2016x1x1xf32>
    %inserted_slice_1357 = tensor.insert_slice %420 into %564[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1358 = tensor.insert_slice %430 into %inserted_slice_1357[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1359 = tensor.insert_slice %437 into %inserted_slice_1358[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1360 = tensor.insert_slice %444 into %inserted_slice_1359[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1361 = tensor.insert_slice %451 into %inserted_slice_1360[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1362 = tensor.insert_slice %458 into %inserted_slice_1361[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1363 = tensor.insert_slice %465 into %inserted_slice_1362[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1364 = tensor.insert_slice %472 into %inserted_slice_1363[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1365 = tensor.insert_slice %479 into %inserted_slice_1364[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1366 = tensor.insert_slice %486 into %inserted_slice_1365[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1367 = tensor.insert_slice %493 into %inserted_slice_1366[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1368 = tensor.insert_slice %500 into %inserted_slice_1367[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1369 = tensor.insert_slice %507 into %inserted_slice_1368[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1370 = tensor.insert_slice %514 into %inserted_slice_1369[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1371 = tensor.insert_slice %521 into %inserted_slice_1370[0, 1680, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1372 = tensor.insert_slice %528 into %inserted_slice_1371[0, 1728, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1373 = tensor.insert_slice %535 into %inserted_slice_1372[0, 1776, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1374 = tensor.insert_slice %542 into %inserted_slice_1373[0, 1824, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1375 = tensor.insert_slice %549 into %inserted_slice_1374[0, 1872, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1376 = tensor.insert_slice %556 into %inserted_slice_1375[0, 1920, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    %inserted_slice_1377 = tensor.insert_slice %563 into %inserted_slice_1376[0, 1968, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2016x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %565 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1377, %cst_63, %cst_62, %cst_62, %cst_63 : tensor<1x2016x1x1xf32>, tensor<2016xf32>, tensor<2016xf32>, tensor<2016xf32>, tensor<2016xf32>) outs(%inserted_slice_1377 : tensor<1x2016x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x2016x1x1xf32>
    %566 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%565 : tensor<1x2016x1x1xf32>) outs(%564 : tensor<1x2016x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x2016x1x1xf32>
    %567 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%566, %cst_12 : tensor<1x2016x1x1xf32>, tensor<192x2016x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %568 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%567 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %569 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1378 = tensor.pad %569 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %570 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1378, %cst_11 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %571 = tensor.empty() : tensor<1x2064x1x1xf32>
    %inserted_slice_1379 = tensor.insert_slice %420 into %571[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1380 = tensor.insert_slice %430 into %inserted_slice_1379[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1381 = tensor.insert_slice %437 into %inserted_slice_1380[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1382 = tensor.insert_slice %444 into %inserted_slice_1381[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1383 = tensor.insert_slice %451 into %inserted_slice_1382[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1384 = tensor.insert_slice %458 into %inserted_slice_1383[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1385 = tensor.insert_slice %465 into %inserted_slice_1384[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1386 = tensor.insert_slice %472 into %inserted_slice_1385[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1387 = tensor.insert_slice %479 into %inserted_slice_1386[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1388 = tensor.insert_slice %486 into %inserted_slice_1387[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1389 = tensor.insert_slice %493 into %inserted_slice_1388[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1390 = tensor.insert_slice %500 into %inserted_slice_1389[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1391 = tensor.insert_slice %507 into %inserted_slice_1390[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1392 = tensor.insert_slice %514 into %inserted_slice_1391[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1393 = tensor.insert_slice %521 into %inserted_slice_1392[0, 1680, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1394 = tensor.insert_slice %528 into %inserted_slice_1393[0, 1728, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1395 = tensor.insert_slice %535 into %inserted_slice_1394[0, 1776, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1396 = tensor.insert_slice %542 into %inserted_slice_1395[0, 1824, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1397 = tensor.insert_slice %549 into %inserted_slice_1396[0, 1872, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1398 = tensor.insert_slice %556 into %inserted_slice_1397[0, 1920, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1399 = tensor.insert_slice %563 into %inserted_slice_1398[0, 1968, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    %inserted_slice_1400 = tensor.insert_slice %570 into %inserted_slice_1399[0, 2016, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2064x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %572 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1400, %cst_59, %cst_58, %cst_58, %cst_59 : tensor<1x2064x1x1xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>, tensor<2064xf32>) outs(%inserted_slice_1400 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x2064x1x1xf32>
    %573 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572 : tensor<1x2064x1x1xf32>) outs(%571 : tensor<1x2064x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x2064x1x1xf32>
    %574 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%573, %cst_10 : tensor<1x2064x1x1xf32>, tensor<192x2064x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %575 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%574 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %576 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1401 = tensor.pad %576 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %577 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1401, %cst_9 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %578 = tensor.empty() : tensor<1x2112x1x1xf32>
    %inserted_slice_1402 = tensor.insert_slice %420 into %578[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1403 = tensor.insert_slice %430 into %inserted_slice_1402[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1404 = tensor.insert_slice %437 into %inserted_slice_1403[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1405 = tensor.insert_slice %444 into %inserted_slice_1404[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1406 = tensor.insert_slice %451 into %inserted_slice_1405[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1407 = tensor.insert_slice %458 into %inserted_slice_1406[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1408 = tensor.insert_slice %465 into %inserted_slice_1407[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1409 = tensor.insert_slice %472 into %inserted_slice_1408[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1410 = tensor.insert_slice %479 into %inserted_slice_1409[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1411 = tensor.insert_slice %486 into %inserted_slice_1410[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1412 = tensor.insert_slice %493 into %inserted_slice_1411[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1413 = tensor.insert_slice %500 into %inserted_slice_1412[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1414 = tensor.insert_slice %507 into %inserted_slice_1413[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1415 = tensor.insert_slice %514 into %inserted_slice_1414[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1416 = tensor.insert_slice %521 into %inserted_slice_1415[0, 1680, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1417 = tensor.insert_slice %528 into %inserted_slice_1416[0, 1728, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1418 = tensor.insert_slice %535 into %inserted_slice_1417[0, 1776, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1419 = tensor.insert_slice %542 into %inserted_slice_1418[0, 1824, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1420 = tensor.insert_slice %549 into %inserted_slice_1419[0, 1872, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1421 = tensor.insert_slice %556 into %inserted_slice_1420[0, 1920, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1422 = tensor.insert_slice %563 into %inserted_slice_1421[0, 1968, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1423 = tensor.insert_slice %570 into %inserted_slice_1422[0, 2016, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    %inserted_slice_1424 = tensor.insert_slice %577 into %inserted_slice_1423[0, 2064, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2112x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %579 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1424, %cst_55, %cst_54, %cst_54, %cst_55 : tensor<1x2112x1x1xf32>, tensor<2112xf32>, tensor<2112xf32>, tensor<2112xf32>, tensor<2112xf32>) outs(%inserted_slice_1424 : tensor<1x2112x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x2112x1x1xf32>
    %580 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579 : tensor<1x2112x1x1xf32>) outs(%578 : tensor<1x2112x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x2112x1x1xf32>
    %581 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%580, %cst_8 : tensor<1x2112x1x1xf32>, tensor<192x2112x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %582 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%581 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %583 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1425 = tensor.pad %583 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %584 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1425, %cst_7 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %585 = tensor.empty() : tensor<1x2160x1x1xf32>
    %inserted_slice_1426 = tensor.insert_slice %420 into %585[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1427 = tensor.insert_slice %430 into %inserted_slice_1426[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1428 = tensor.insert_slice %437 into %inserted_slice_1427[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1429 = tensor.insert_slice %444 into %inserted_slice_1428[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1430 = tensor.insert_slice %451 into %inserted_slice_1429[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1431 = tensor.insert_slice %458 into %inserted_slice_1430[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1432 = tensor.insert_slice %465 into %inserted_slice_1431[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1433 = tensor.insert_slice %472 into %inserted_slice_1432[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1434 = tensor.insert_slice %479 into %inserted_slice_1433[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1435 = tensor.insert_slice %486 into %inserted_slice_1434[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1436 = tensor.insert_slice %493 into %inserted_slice_1435[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1437 = tensor.insert_slice %500 into %inserted_slice_1436[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1438 = tensor.insert_slice %507 into %inserted_slice_1437[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1439 = tensor.insert_slice %514 into %inserted_slice_1438[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1440 = tensor.insert_slice %521 into %inserted_slice_1439[0, 1680, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1441 = tensor.insert_slice %528 into %inserted_slice_1440[0, 1728, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1442 = tensor.insert_slice %535 into %inserted_slice_1441[0, 1776, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1443 = tensor.insert_slice %542 into %inserted_slice_1442[0, 1824, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1444 = tensor.insert_slice %549 into %inserted_slice_1443[0, 1872, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1445 = tensor.insert_slice %556 into %inserted_slice_1444[0, 1920, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1446 = tensor.insert_slice %563 into %inserted_slice_1445[0, 1968, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1447 = tensor.insert_slice %570 into %inserted_slice_1446[0, 2016, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1448 = tensor.insert_slice %577 into %inserted_slice_1447[0, 2064, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    %inserted_slice_1449 = tensor.insert_slice %584 into %inserted_slice_1448[0, 2112, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2160x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %586 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1449, %cst_6, %cst_5, %cst_5, %cst_6 : tensor<1x2160x1x1xf32>, tensor<2160xf32>, tensor<2160xf32>, tensor<2160xf32>, tensor<2160xf32>) outs(%inserted_slice_1449 : tensor<1x2160x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x2160x1x1xf32>
    %587 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586 : tensor<1x2160x1x1xf32>) outs(%585 : tensor<1x2160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x2160x1x1xf32>
    %588 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%587, %cst_4 : tensor<1x2160x1x1xf32>, tensor<192x2160x1x1xf32>) outs(%424 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %589 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %cst_246, %cst_245, %cst_245, %cst_246 : tensor<1x192x1x1xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%588 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x192x1x1xf32>
    %590 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%589 : tensor<1x192x1x1xf32>) outs(%423 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x192x1x1xf32>
    %padded_1450 = tensor.pad %590 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_251 : f32
    } : tensor<1x192x1x1xf32> to tensor<1x192x3x3xf32>
    %591 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1450, %cst_3 : tensor<1x192x3x3xf32>, tensor<48x192x3x3xf32>) outs(%429 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %592 = tensor.empty() : tensor<1x2208x1x1xf32>
    %inserted_slice_1451 = tensor.insert_slice %420 into %592[0, 0, 0, 0] [1, 1056, 1, 1] [1, 1, 1, 1] : tensor<1x1056x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1452 = tensor.insert_slice %430 into %inserted_slice_1451[0, 1056, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1453 = tensor.insert_slice %437 into %inserted_slice_1452[0, 1104, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1454 = tensor.insert_slice %444 into %inserted_slice_1453[0, 1152, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1455 = tensor.insert_slice %451 into %inserted_slice_1454[0, 1200, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1456 = tensor.insert_slice %458 into %inserted_slice_1455[0, 1248, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1457 = tensor.insert_slice %465 into %inserted_slice_1456[0, 1296, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1458 = tensor.insert_slice %472 into %inserted_slice_1457[0, 1344, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1459 = tensor.insert_slice %479 into %inserted_slice_1458[0, 1392, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1460 = tensor.insert_slice %486 into %inserted_slice_1459[0, 1440, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1461 = tensor.insert_slice %493 into %inserted_slice_1460[0, 1488, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1462 = tensor.insert_slice %500 into %inserted_slice_1461[0, 1536, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1463 = tensor.insert_slice %507 into %inserted_slice_1462[0, 1584, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1464 = tensor.insert_slice %514 into %inserted_slice_1463[0, 1632, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1465 = tensor.insert_slice %521 into %inserted_slice_1464[0, 1680, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1466 = tensor.insert_slice %528 into %inserted_slice_1465[0, 1728, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1467 = tensor.insert_slice %535 into %inserted_slice_1466[0, 1776, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1468 = tensor.insert_slice %542 into %inserted_slice_1467[0, 1824, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1469 = tensor.insert_slice %549 into %inserted_slice_1468[0, 1872, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1470 = tensor.insert_slice %556 into %inserted_slice_1469[0, 1920, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1471 = tensor.insert_slice %563 into %inserted_slice_1470[0, 1968, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1472 = tensor.insert_slice %570 into %inserted_slice_1471[0, 2016, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1473 = tensor.insert_slice %577 into %inserted_slice_1472[0, 2064, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1474 = tensor.insert_slice %584 into %inserted_slice_1473[0, 2112, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    %inserted_slice_1475 = tensor.insert_slice %591 into %inserted_slice_1474[0, 2160, 0, 0] [1, 48, 1, 1] [1, 1, 1, 1] : tensor<1x48x1x1xf32> into tensor<1x2208x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %593 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%inserted_slice_1475, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x2208x1x1xf32>, tensor<2208xf32>, tensor<2208xf32>, tensor<2208xf32>, tensor<2208xf32>) outs(%inserted_slice_1475 : tensor<1x2208x1x1xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %in_1479: f32, %out: f32):
      %604 = arith.truncf %cst_253 : f64 to f32
      %605 = arith.addf %in_1479, %604 : f32
      %606 = math.rsqrt %605 : f32
      %607 = arith.subf %in, %in_1478 : f32
      %608 = arith.mulf %607, %606 : f32
      %609 = arith.mulf %608, %in_1476 : f32
      %610 = arith.addf %609, %in_1477 : f32
      linalg.yield %610 : f32
    } -> tensor<1x2208x1x1xf32>
    %594 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593 : tensor<1x2208x1x1xf32>) outs(%592 : tensor<1x2208x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %604 = arith.cmpf ugt, %in, %cst_251 : f32
      %605 = arith.select %604, %in, %cst_251 : f32
      linalg.yield %605 : f32
    } -> tensor<1x2208x1x1xf32>
    %595 = linalg.fill ins(%cst_251 : f32) outs(%592 : tensor<1x2208x1x1xf32>) -> tensor<1x2208x1x1xf32>
    %596 = tensor.empty() : tensor<1x1xf32>
    %597 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%594, %596 : tensor<1x2208x1x1xf32>, tensor<1x1xf32>) outs(%595 : tensor<1x2208x1x1xf32>) -> tensor<1x2208x1x1xf32>
    %collapsed = tensor.collapse_shape %597 [[0], [1, 2, 3]] : tensor<1x2208x1x1xf32> into tensor<1x2208xf32>
    %598 = tensor.empty() : tensor<2208x1000xf32>
    %599 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x2208xf32>) outs(%598 : tensor<2208x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2208x1000xf32>
    %600 = tensor.empty() : tensor<1x1000xf32>
    %601 = linalg.fill ins(%cst_251 : f32) outs(%600 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %602 = linalg.matmul ins(%collapsed, %599 : tensor<1x2208xf32>, tensor<2208x1000xf32>) outs(%601 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %603 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%602, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%600 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_1476: f32, %out: f32):
      %604 = arith.addf %in, %in_1476 : f32
      linalg.yield %604 : f32
    } -> tensor<1x1000xf32>
    return %603 : tensor<1x1000xf32>
  }
}
