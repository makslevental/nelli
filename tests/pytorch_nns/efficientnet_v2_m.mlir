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
    %cst = arith.constant dense<0.011162e+00> : tensor<1000x1280xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<1280xf32>
    %cst_2 = arith.constant dense<1.000000e+00> : tensor<1280xf32>
    %cst_3 = arith.constant dense<-0.000017e+00> : tensor<1280x512x1x1xf32>
    %cst_4 = arith.constant dense<0.001287e+00> : tensor<512x3072x1x1xf32>
    %cst_5 = arith.constant dense<-0.009568e+00> : tensor<3072x128x1x1xf32>
    %cst_6 = arith.constant dense<-0.014275e+00> : tensor<128x3072x1x1xf32>
    %cst_7 = arith.constant dense<0.008013e+00> : tensor<3072x1x3x3xf32>
    %cst_8 = arith.constant dense<0.002609e+00> : tensor<3072x512x1x1xf32>
    %cst_9 = arith.constant dense<0.005398e+00> : tensor<512x3072x1x1xf32>
    %cst_10 = arith.constant dense<-0.019731e+00> : tensor<3072x128x1x1xf32>
    %cst_11 = arith.constant dense<-0.004356e+00> : tensor<128x3072x1x1xf32>
    %cst_12 = arith.constant dense<-0.005456e+00> : tensor<3072x1x3x3xf32>
    %cst_13 = arith.constant dense<-0.017404e+00> : tensor<3072x512x1x1xf32>
    %cst_14 = arith.constant dense<-0.012112e+00> : tensor<512x3072x1x1xf32>
    %cst_15 = arith.constant dense<0.014774e+00> : tensor<3072x128x1x1xf32>
    %cst_16 = arith.constant dense<0.014115e+00> : tensor<128x3072x1x1xf32>
    %cst_17 = arith.constant dense<-0.007585e+00> : tensor<3072x1x3x3xf32>
    %cst_18 = arith.constant dense<0.014151e+00> : tensor<3072x512x1x1xf32>
    %cst_19 = arith.constant dense<-0.002305e+00> : tensor<512x3072x1x1xf32>
    %cst_20 = arith.constant dense<-0.003778e+00> : tensor<3072x128x1x1xf32>
    %cst_21 = arith.constant dense<-0.006747e+00> : tensor<128x3072x1x1xf32>
    %cst_22 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_23 = arith.constant dense<0.008996e+00> : tensor<3072x1x3x3xf32>
    %cst_24 = arith.constant dense<0.000000e+00> : tensor<3072xf32>
    %cst_25 = arith.constant dense<1.000000e+00> : tensor<3072xf32>
    %cst_26 = arith.constant dense<0.012489e+00> : tensor<3072x512x1x1xf32>
    %cst_27 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_28 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_29 = arith.constant dense<0.012150e+00> : tensor<512x1824x1x1xf32>
    %cst_30 = arith.constant dense<0.003105e+00> : tensor<1824x76x1x1xf32>
    %cst_31 = arith.constant dense<-0.009807e+00> : tensor<76x1824x1x1xf32>
    %cst_32 = arith.constant dense<0.004079e+00> : tensor<1824x1x3x3xf32>
    %cst_33 = arith.constant dense<-0.003338e+00> : tensor<1824x304x1x1xf32>
    %cst_34 = arith.constant dense<0.004138e+00> : tensor<304x1824x1x1xf32>
    %cst_35 = arith.constant dense<-0.000086e+00> : tensor<1824x76x1x1xf32>
    %cst_36 = arith.constant dense<-0.017824e+00> : tensor<76x1824x1x1xf32>
    %cst_37 = arith.constant dense<-0.004545e+00> : tensor<1824x1x3x3xf32>
    %cst_38 = arith.constant dense<-0.005062e+00> : tensor<1824x304x1x1xf32>
    %cst_39 = arith.constant dense<-0.003485e+00> : tensor<304x1824x1x1xf32>
    %cst_40 = arith.constant dense<0.009528e+00> : tensor<1824x76x1x1xf32>
    %cst_41 = arith.constant dense<-0.014570e+00> : tensor<76x1824x1x1xf32>
    %cst_42 = arith.constant dense<0.015521e+00> : tensor<1824x1x3x3xf32>
    %cst_43 = arith.constant dense<0.002261e+00> : tensor<1824x304x1x1xf32>
    %cst_44 = arith.constant dense<-0.001377e+00> : tensor<304x1824x1x1xf32>
    %cst_45 = arith.constant dense<0.003201e+00> : tensor<1824x76x1x1xf32>
    %cst_46 = arith.constant dense<0.009936e+00> : tensor<76x1824x1x1xf32>
    %cst_47 = arith.constant dense<-0.000275e+00> : tensor<1824x1x3x3xf32>
    %cst_48 = arith.constant dense<-0.000117e+00> : tensor<1824x304x1x1xf32>
    %cst_49 = arith.constant dense<-0.010175e+00> : tensor<304x1824x1x1xf32>
    %cst_50 = arith.constant dense<-0.002432e+00> : tensor<1824x76x1x1xf32>
    %cst_51 = arith.constant dense<-0.007167e+00> : tensor<76x1824x1x1xf32>
    %cst_52 = arith.constant dense<0.002278e+00> : tensor<1824x1x3x3xf32>
    %cst_53 = arith.constant dense<-0.003043e+00> : tensor<1824x304x1x1xf32>
    %cst_54 = arith.constant dense<0.002514e+00> : tensor<304x1824x1x1xf32>
    %cst_55 = arith.constant dense<0.003872e+00> : tensor<1824x76x1x1xf32>
    %cst_56 = arith.constant dense<-0.014069e+00> : tensor<76x1824x1x1xf32>
    %cst_57 = arith.constant dense<0.005793e+00> : tensor<1824x1x3x3xf32>
    %cst_58 = arith.constant dense<-0.002293e+00> : tensor<1824x304x1x1xf32>
    %cst_59 = arith.constant dense<0.000885e+00> : tensor<304x1824x1x1xf32>
    %cst_60 = arith.constant dense<0.018554e+00> : tensor<1824x76x1x1xf32>
    %cst_61 = arith.constant dense<-0.006153e+00> : tensor<76x1824x1x1xf32>
    %cst_62 = arith.constant dense<-0.004742e+00> : tensor<1824x1x3x3xf32>
    %cst_63 = arith.constant dense<0.006024e+00> : tensor<1824x304x1x1xf32>
    %cst_64 = arith.constant dense<0.006415e+00> : tensor<304x1824x1x1xf32>
    %cst_65 = arith.constant dense<-0.001341e+00> : tensor<1824x76x1x1xf32>
    %cst_66 = arith.constant dense<-0.001850e+00> : tensor<76x1824x1x1xf32>
    %cst_67 = arith.constant dense<-0.008944e+00> : tensor<1824x1x3x3xf32>
    %cst_68 = arith.constant dense<0.018249e+00> : tensor<1824x304x1x1xf32>
    %cst_69 = arith.constant dense<-0.002425e+00> : tensor<304x1824x1x1xf32>
    %cst_70 = arith.constant dense<-0.012906e+00> : tensor<1824x76x1x1xf32>
    %cst_71 = arith.constant dense<-0.004565e+00> : tensor<76x1824x1x1xf32>
    %cst_72 = arith.constant dense<0.001579e+00> : tensor<1824x1x3x3xf32>
    %cst_73 = arith.constant dense<-0.000153e+00> : tensor<1824x304x1x1xf32>
    %cst_74 = arith.constant dense<-0.011197e+00> : tensor<304x1824x1x1xf32>
    %cst_75 = arith.constant dense<0.003879e+00> : tensor<1824x76x1x1xf32>
    %cst_76 = arith.constant dense<-0.000258e+00> : tensor<76x1824x1x1xf32>
    %cst_77 = arith.constant dense<0.006055e+00> : tensor<1824x1x3x3xf32>
    %cst_78 = arith.constant dense<0.000525e+00> : tensor<1824x304x1x1xf32>
    %cst_79 = arith.constant dense<-0.009333e+00> : tensor<304x1824x1x1xf32>
    %cst_80 = arith.constant dense<0.010244e+00> : tensor<1824x76x1x1xf32>
    %cst_81 = arith.constant dense<0.004229e+00> : tensor<76x1824x1x1xf32>
    %cst_82 = arith.constant dense<-0.010244e+00> : tensor<1824x1x3x3xf32>
    %cst_83 = arith.constant dense<-0.005667e+00> : tensor<1824x304x1x1xf32>
    %cst_84 = arith.constant dense<-0.006196e+00> : tensor<304x1824x1x1xf32>
    %cst_85 = arith.constant dense<-0.001366e+00> : tensor<1824x76x1x1xf32>
    %cst_86 = arith.constant dense<0.005827e+00> : tensor<76x1824x1x1xf32>
    %cst_87 = arith.constant dense<0.013515e+00> : tensor<1824x1x3x3xf32>
    %cst_88 = arith.constant dense<0.007974e+00> : tensor<1824x304x1x1xf32>
    %cst_89 = arith.constant dense<-0.003671e+00> : tensor<304x1824x1x1xf32>
    %cst_90 = arith.constant dense<-0.012976e+00> : tensor<1824x76x1x1xf32>
    %cst_91 = arith.constant dense<0.006938e+00> : tensor<76x1824x1x1xf32>
    %cst_92 = arith.constant dense<-0.003842e+00> : tensor<1824x1x3x3xf32>
    %cst_93 = arith.constant dense<-0.007926e+00> : tensor<1824x304x1x1xf32>
    %cst_94 = arith.constant dense<0.002877e+00> : tensor<304x1824x1x1xf32>
    %cst_95 = arith.constant dense<0.002027e+00> : tensor<1824x76x1x1xf32>
    %cst_96 = arith.constant dense<0.003151e+00> : tensor<76x1824x1x1xf32>
    %cst_97 = arith.constant dense<-0.006541e+00> : tensor<1824x1x3x3xf32>
    %cst_98 = arith.constant dense<0.013589e+00> : tensor<1824x304x1x1xf32>
    %cst_99 = arith.constant dense<-0.010638e+00> : tensor<304x1824x1x1xf32>
    %cst_100 = arith.constant dense<0.013224e+00> : tensor<1824x76x1x1xf32>
    %cst_101 = arith.constant dense<0.001718e+00> : tensor<76x1824x1x1xf32>
    %cst_102 = arith.constant dense<0.001774e+00> : tensor<1824x1x3x3xf32>
    %cst_103 = arith.constant dense<0.016603e+00> : tensor<1824x304x1x1xf32>
    %cst_104 = arith.constant dense<0.001969e+00> : tensor<304x1824x1x1xf32>
    %cst_105 = arith.constant dense<0.002489e+00> : tensor<1824x76x1x1xf32>
    %cst_106 = arith.constant dense<0.008523e+00> : tensor<76x1824x1x1xf32>
    %cst_107 = arith.constant dense<0.000463e+00> : tensor<1824x1x3x3xf32>
    %cst_108 = arith.constant dense<0.000902e+00> : tensor<1824x304x1x1xf32>
    %cst_109 = arith.constant dense<0.007809e+00> : tensor<304x1824x1x1xf32>
    %cst_110 = arith.constant dense<0.016895e+00> : tensor<1824x76x1x1xf32>
    %cst_111 = arith.constant dense<-0.011317e+00> : tensor<76x1824x1x1xf32>
    %cst_112 = arith.constant dense<-0.010437e+00> : tensor<1824x1x3x3xf32>
    %cst_113 = arith.constant dense<-0.001645e+00> : tensor<1824x304x1x1xf32>
    %cst_114 = arith.constant dense<0.012717e+00> : tensor<304x1824x1x1xf32>
    %cst_115 = arith.constant dense<-0.002521e+00> : tensor<1824x76x1x1xf32>
    %cst_116 = arith.constant dense<0.007408e+00> : tensor<76x1824x1x1xf32>
    %cst_117 = arith.constant dense<0.000000e+00> : tensor<76xf32>
    %cst_118 = arith.constant dense<-0.006567e+00> : tensor<1824x1x3x3xf32>
    %cst_119 = arith.constant dense<0.000000e+00> : tensor<1824xf32>
    %cst_120 = arith.constant dense<1.000000e+00> : tensor<1824xf32>
    %cst_121 = arith.constant dense<-0.013904e+00> : tensor<1824x304x1x1xf32>
    %cst_122 = arith.constant dense<0.000000e+00> : tensor<304xf32>
    %cst_123 = arith.constant dense<1.000000e+00> : tensor<304xf32>
    %cst_124 = arith.constant dense<-0.008109e+00> : tensor<304x1056x1x1xf32>
    %cst_125 = arith.constant dense<-0.004648e+00> : tensor<1056x44x1x1xf32>
    %cst_126 = arith.constant dense<-0.003476e+00> : tensor<44x1056x1x1xf32>
    %cst_127 = arith.constant dense<-0.006935e+00> : tensor<1056x1x3x3xf32>
    %cst_128 = arith.constant dense<-0.002988e+00> : tensor<1056x176x1x1xf32>
    %cst_129 = arith.constant dense<-0.014219e+00> : tensor<176x1056x1x1xf32>
    %cst_130 = arith.constant dense<-0.015818e+00> : tensor<1056x44x1x1xf32>
    %cst_131 = arith.constant dense<0.012447e+00> : tensor<44x1056x1x1xf32>
    %cst_132 = arith.constant dense<0.003890e+00> : tensor<1056x1x3x3xf32>
    %cst_133 = arith.constant dense<0.009001e+00> : tensor<1056x176x1x1xf32>
    %cst_134 = arith.constant dense<-0.002989e+00> : tensor<176x1056x1x1xf32>
    %cst_135 = arith.constant dense<0.003366e+00> : tensor<1056x44x1x1xf32>
    %cst_136 = arith.constant dense<-0.002796e+00> : tensor<44x1056x1x1xf32>
    %cst_137 = arith.constant dense<-0.002700e+00> : tensor<1056x1x3x3xf32>
    %cst_138 = arith.constant dense<-0.020090e+00> : tensor<1056x176x1x1xf32>
    %cst_139 = arith.constant dense<-0.001013e+00> : tensor<176x1056x1x1xf32>
    %cst_140 = arith.constant dense<0.018339e+00> : tensor<1056x44x1x1xf32>
    %cst_141 = arith.constant dense<0.000600e+00> : tensor<44x1056x1x1xf32>
    %cst_142 = arith.constant dense<-0.009137e+00> : tensor<1056x1x3x3xf32>
    %cst_143 = arith.constant dense<0.005921e+00> : tensor<1056x176x1x1xf32>
    %cst_144 = arith.constant dense<0.013827e+00> : tensor<176x1056x1x1xf32>
    %cst_145 = arith.constant dense<-0.000591e+00> : tensor<1056x44x1x1xf32>
    %cst_146 = arith.constant dense<0.004225e+00> : tensor<44x1056x1x1xf32>
    %cst_147 = arith.constant dense<0.005879e+00> : tensor<1056x1x3x3xf32>
    %cst_148 = arith.constant dense<0.006496e+00> : tensor<1056x176x1x1xf32>
    %cst_149 = arith.constant dense<-0.008244e+00> : tensor<176x1056x1x1xf32>
    %cst_150 = arith.constant dense<0.005476e+00> : tensor<1056x44x1x1xf32>
    %cst_151 = arith.constant dense<0.006765e+00> : tensor<44x1056x1x1xf32>
    %cst_152 = arith.constant dense<-0.008637e+00> : tensor<1056x1x3x3xf32>
    %cst_153 = arith.constant dense<-0.013447e+00> : tensor<1056x176x1x1xf32>
    %cst_154 = arith.constant dense<-0.008315e+00> : tensor<176x1056x1x1xf32>
    %cst_155 = arith.constant dense<0.000212e+00> : tensor<1056x44x1x1xf32>
    %cst_156 = arith.constant dense<-0.014025e+00> : tensor<44x1056x1x1xf32>
    %cst_157 = arith.constant dense<0.010685e+00> : tensor<1056x1x3x3xf32>
    %cst_158 = arith.constant dense<-0.024398e+00> : tensor<1056x176x1x1xf32>
    %cst_159 = arith.constant dense<-0.013929e+00> : tensor<176x1056x1x1xf32>
    %cst_160 = arith.constant dense<0.010534e+00> : tensor<1056x44x1x1xf32>
    %cst_161 = arith.constant dense<0.000943e+00> : tensor<44x1056x1x1xf32>
    %cst_162 = arith.constant dense<0.010533e+00> : tensor<1056x1x3x3xf32>
    %cst_163 = arith.constant dense<-0.000620e+00> : tensor<1056x176x1x1xf32>
    %cst_164 = arith.constant dense<0.004580e+00> : tensor<176x1056x1x1xf32>
    %cst_165 = arith.constant dense<0.010681e+00> : tensor<1056x44x1x1xf32>
    %cst_166 = arith.constant dense<0.000049e+00> : tensor<44x1056x1x1xf32>
    %cst_167 = arith.constant dense<-0.006679e+00> : tensor<1056x1x3x3xf32>
    %cst_168 = arith.constant dense<0.000780e+00> : tensor<1056x176x1x1xf32>
    %cst_169 = arith.constant dense<-0.016325e+00> : tensor<176x1056x1x1xf32>
    %cst_170 = arith.constant dense<-0.007562e+00> : tensor<1056x44x1x1xf32>
    %cst_171 = arith.constant dense<0.003781e+00> : tensor<44x1056x1x1xf32>
    %cst_172 = arith.constant dense<-0.002094e+00> : tensor<1056x1x3x3xf32>
    %cst_173 = arith.constant dense<-0.006725e+00> : tensor<1056x176x1x1xf32>
    %cst_174 = arith.constant dense<0.007734e+00> : tensor<176x1056x1x1xf32>
    %cst_175 = arith.constant dense<-0.007010e+00> : tensor<1056x44x1x1xf32>
    %cst_176 = arith.constant dense<-0.006903e+00> : tensor<44x1056x1x1xf32>
    %cst_177 = arith.constant dense<-0.011351e+00> : tensor<1056x1x3x3xf32>
    %cst_178 = arith.constant dense<0.000213e+00> : tensor<1056x176x1x1xf32>
    %cst_179 = arith.constant dense<0.023050e+00> : tensor<176x1056x1x1xf32>
    %cst_180 = arith.constant dense<0.001500e+00> : tensor<1056x44x1x1xf32>
    %cst_181 = arith.constant dense<-0.008911e+00> : tensor<44x1056x1x1xf32>
    %cst_182 = arith.constant dense<-0.012759e+00> : tensor<1056x1x3x3xf32>
    %cst_183 = arith.constant dense<-0.009161e+00> : tensor<1056x176x1x1xf32>
    %cst_184 = arith.constant dense<-0.016076e+00> : tensor<176x1056x1x1xf32>
    %cst_185 = arith.constant dense<0.028004e+00> : tensor<1056x44x1x1xf32>
    %cst_186 = arith.constant dense<-0.003557e+00> : tensor<44x1056x1x1xf32>
    %cst_187 = arith.constant dense<-0.011212e+00> : tensor<1056x1x3x3xf32>
    %cst_188 = arith.constant dense<-0.001608e+00> : tensor<1056x176x1x1xf32>
    %cst_189 = arith.constant dense<0.006761e+00> : tensor<176x1056x1x1xf32>
    %cst_190 = arith.constant dense<-0.007942e+00> : tensor<1056x44x1x1xf32>
    %cst_191 = arith.constant dense<-0.006463e+00> : tensor<44x1056x1x1xf32>
    %cst_192 = arith.constant dense<0.000000e+00> : tensor<44xf32>
    %cst_193 = arith.constant dense<-0.007476e+00> : tensor<1056x1x3x3xf32>
    %cst_194 = arith.constant dense<0.000000e+00> : tensor<1056xf32>
    %cst_195 = arith.constant dense<1.000000e+00> : tensor<1056xf32>
    %cst_196 = arith.constant dense<-0.003868e+00> : tensor<1056x176x1x1xf32>
    %cst_197 = arith.constant dense<0.000000e+00> : tensor<176xf32>
    %cst_198 = arith.constant dense<1.000000e+00> : tensor<176xf32>
    %cst_199 = arith.constant dense<-0.007701e+00> : tensor<176x960x1x1xf32>
    %cst_200 = arith.constant dense<0.001552e+00> : tensor<960x40x1x1xf32>
    %cst_201 = arith.constant dense<-0.018049e+00> : tensor<40x960x1x1xf32>
    %cst_202 = arith.constant dense<-0.005435e+00> : tensor<960x1x3x3xf32>
    %cst_203 = arith.constant dense<0.000000e+00> : tensor<960xf32>
    %cst_204 = arith.constant dense<1.000000e+00> : tensor<960xf32>
    %cst_205 = arith.constant dense<-0.000740e+00> : tensor<960x160x1x1xf32>
    %cst_206 = arith.constant dense<0.000757e+00> : tensor<160x640x1x1xf32>
    %cst_207 = arith.constant dense<0.012607e+00> : tensor<640x40x1x1xf32>
    %cst_208 = arith.constant dense<-0.016931e+00> : tensor<40x640x1x1xf32>
    %cst_209 = arith.constant dense<-0.010616e+00> : tensor<640x1x3x3xf32>
    %cst_210 = arith.constant dense<0.009128e+00> : tensor<640x160x1x1xf32>
    %cst_211 = arith.constant dense<-0.010202e+00> : tensor<160x640x1x1xf32>
    %cst_212 = arith.constant dense<-0.012875e+00> : tensor<640x40x1x1xf32>
    %cst_213 = arith.constant dense<-0.003357e+00> : tensor<40x640x1x1xf32>
    %cst_214 = arith.constant dense<-0.015366e+00> : tensor<640x1x3x3xf32>
    %cst_215 = arith.constant dense<0.005420e+00> : tensor<640x160x1x1xf32>
    %cst_216 = arith.constant dense<0.003806e+00> : tensor<160x640x1x1xf32>
    %cst_217 = arith.constant dense<-0.006438e+00> : tensor<640x40x1x1xf32>
    %cst_218 = arith.constant dense<-0.000493e+00> : tensor<40x640x1x1xf32>
    %cst_219 = arith.constant dense<0.003269e+00> : tensor<640x1x3x3xf32>
    %cst_220 = arith.constant dense<0.007626e+00> : tensor<640x160x1x1xf32>
    %cst_221 = arith.constant dense<0.007717e+00> : tensor<160x640x1x1xf32>
    %cst_222 = arith.constant dense<-0.000993e+00> : tensor<640x40x1x1xf32>
    %cst_223 = arith.constant dense<0.004189e+00> : tensor<40x640x1x1xf32>
    %cst_224 = arith.constant dense<-0.005897e+00> : tensor<640x1x3x3xf32>
    %cst_225 = arith.constant dense<0.001724e+00> : tensor<640x160x1x1xf32>
    %cst_226 = arith.constant dense<0.011962e+00> : tensor<160x640x1x1xf32>
    %cst_227 = arith.constant dense<-0.001263e+00> : tensor<640x40x1x1xf32>
    %cst_228 = arith.constant dense<0.012552e+00> : tensor<40x640x1x1xf32>
    %cst_229 = arith.constant dense<-0.003012e+00> : tensor<640x1x3x3xf32>
    %cst_230 = arith.constant dense<0.012344e+00> : tensor<640x160x1x1xf32>
    %cst_231 = arith.constant dense<0.005507e+00> : tensor<160x640x1x1xf32>
    %cst_232 = arith.constant dense<-0.013184e+00> : tensor<640x40x1x1xf32>
    %cst_233 = arith.constant dense<0.001213e+00> : tensor<40x640x1x1xf32>
    %cst_234 = arith.constant dense<0.000000e+00> : tensor<40xf32>
    %cst_235 = arith.constant dense<-0.003159e+00> : tensor<640x1x3x3xf32>
    %cst_236 = arith.constant dense<0.000000e+00> : tensor<640xf32>
    %cst_237 = arith.constant dense<1.000000e+00> : tensor<640xf32>
    %cst_238 = arith.constant dense<-0.016865e+00> : tensor<640x160x1x1xf32>
    %cst_239 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_240 = arith.constant dense<1.000000e+00> : tensor<160xf32>
    %cst_241 = arith.constant dense<0.009843e+00> : tensor<160x320x1x1xf32>
    %cst_242 = arith.constant dense<-0.009232e+00> : tensor<320x20x1x1xf32>
    %cst_243 = arith.constant dense<0.002456e+00> : tensor<20x320x1x1xf32>
    %cst_244 = arith.constant dense<0.000000e+00> : tensor<20xf32>
    %cst_245 = arith.constant dense<-0.011931e+00> : tensor<320x1x3x3xf32>
    %cst_246 = arith.constant dense<0.010536e+00> : tensor<320x80x1x1xf32>
    %cst_247 = arith.constant dense<-0.001740e+00> : tensor<80x320x1x1xf32>
    %cst_248 = arith.constant dense<0.003871e+00> : tensor<320x80x3x3xf32>
    %cst_249 = arith.constant dense<-0.011267e+00> : tensor<80x320x1x1xf32>
    %cst_250 = arith.constant dense<0.009316e+00> : tensor<320x80x3x3xf32>
    %cst_251 = arith.constant dense<0.016356e+00> : tensor<80x320x1x1xf32>
    %cst_252 = arith.constant dense<-0.003513e+00> : tensor<320x80x3x3xf32>
    %cst_253 = arith.constant dense<0.000875e+00> : tensor<80x320x1x1xf32>
    %cst_254 = arith.constant dense<0.000000e+00> : tensor<320xf32>
    %cst_255 = arith.constant dense<1.000000e+00> : tensor<320xf32>
    %cst_256 = arith.constant dense<-0.002523e+00> : tensor<320x80x3x3xf32>
    %cst_257 = arith.constant dense<0.000000e+00> : tensor<80xf32>
    %cst_258 = arith.constant dense<1.000000e+00> : tensor<80xf32>
    %cst_259 = arith.constant dense<-0.006855e+00> : tensor<80x192x1x1xf32>
    %cst_260 = arith.constant dense<-0.004342e+00> : tensor<192x48x3x3xf32>
    %cst_261 = arith.constant dense<0.007824e+00> : tensor<48x192x1x1xf32>
    %cst_262 = arith.constant dense<0.002970e+00> : tensor<192x48x3x3xf32>
    %cst_263 = arith.constant dense<0.011157e+00> : tensor<48x192x1x1xf32>
    %cst_264 = arith.constant dense<-0.027255e+00> : tensor<192x48x3x3xf32>
    %cst_265 = arith.constant dense<0.004145e+00> : tensor<48x192x1x1xf32>
    %cst_266 = arith.constant dense<0.011971e+00> : tensor<192x48x3x3xf32>
    %cst_267 = arith.constant dense<-0.025351e+00> : tensor<48x192x1x1xf32>
    %cst_268 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_269 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_270 = arith.constant dense<0.020177e+00> : tensor<192x48x3x3xf32>
    %cst_271 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_272 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_273 = arith.constant dense<-0.024093e+00> : tensor<48x96x1x1xf32>
    %cst_274 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_275 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_276 = arith.constant dense<-0.004330e+00> : tensor<96x24x3x3xf32>
    %cst_277 = arith.constant dense<0.001957e+00> : tensor<24x24x3x3xf32>
    %cst_278 = arith.constant dense<-0.007753e+00> : tensor<24x24x3x3xf32>
    %cst_279 = arith.constant dense<-0.009979e+00> : tensor<24x24x3x3xf32>
    %cst_280 = arith.constant dense<0.000000e+00> : tensor<24xf32>
    %cst_281 = arith.constant dense<1.000000e+00> : tensor<24xf32>
    %cst_282 = arith.constant dense<0.015239e+00> : tensor<24x3x3x3xf32>
    %cst_283 = arith.constant 0.000000e+00 : f32
    %cst_284 = arith.constant 1.000000e-03 : f64
    %cst_285 = arith.constant 4.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_286 = arith.constant 1.000000e+00 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x34x34xf32>
    %0 = tensor.empty() : tensor<1x24x16x16xf32>
    %1 = linalg.fill ins(%cst_283 : f32) outs(%0 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_282 : tensor<1x3x34x34xf32>, tensor<24x3x3x3xf32>) outs(%1 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_281, %cst_280, %cst_280, %cst_281 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%2 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x24x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x24x16x16xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x24x16x16xf32>
    %padded_287 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x24x16x16xf32> to tensor<1x24x18x18xf32>
    %7 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_287, %cst_279 : tensor<1x24x18x18xf32>, tensor<24x24x3x3xf32>) outs(%1 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_281, %cst_280, %cst_280, %cst_281 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%7 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x24x16x16xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x24x16x16xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x24x16x16xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %6 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x24x16x16xf32>
    %padded_288 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x24x16x16xf32> to tensor<1x24x18x18xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_288, %cst_278 : tensor<1x24x18x18xf32>, tensor<24x24x3x3xf32>) outs(%1 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %13 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_281, %cst_280, %cst_280, %cst_281 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%12 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x24x16x16xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x24x16x16xf32>
    %15 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %13 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x24x16x16xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %11 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x24x16x16xf32>
    %padded_289 = tensor.pad %16 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x24x16x16xf32> to tensor<1x24x18x18xf32>
    %17 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_289, %cst_277 : tensor<1x24x18x18xf32>, tensor<24x24x3x3xf32>) outs(%1 : tensor<1x24x16x16xf32>) -> tensor<1x24x16x16xf32>
    cf.assert %3, "training is not supported for now"
    %18 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %cst_281, %cst_280, %cst_280, %cst_281 : tensor<1x24x16x16xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%17 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x24x16x16xf32>
    %19 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x24x16x16xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %18 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x24x16x16xf32>
    %21 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %16 : tensor<1x24x16x16xf32>, tensor<1x24x16x16xf32>) outs(%0 : tensor<1x24x16x16xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x24x16x16xf32>
    %padded_290 = tensor.pad %21 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x24x16x16xf32> to tensor<1x24x18x18xf32>
    %22 = tensor.empty() : tensor<1x96x8x8xf32>
    %23 = linalg.fill ins(%cst_283 : f32) outs(%22 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    %24 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_290, %cst_276 : tensor<1x24x18x18xf32>, tensor<96x24x3x3xf32>) outs(%23 : tensor<1x96x8x8xf32>) -> tensor<1x96x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %25 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24, %cst_275, %cst_274, %cst_274, %cst_275 : tensor<1x96x8x8xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%24 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x96x8x8xf32>
    %26 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25 : tensor<1x96x8x8xf32>) outs(%22 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x96x8x8xf32>
    %27 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %25 : tensor<1x96x8x8xf32>, tensor<1x96x8x8xf32>) outs(%22 : tensor<1x96x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x96x8x8xf32>
    %28 = tensor.empty() : tensor<1x48x8x8xf32>
    %29 = linalg.fill ins(%cst_283 : f32) outs(%28 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    %30 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%27, %cst_273 : tensor<1x96x8x8xf32>, tensor<48x96x1x1xf32>) outs(%29 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %31 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %cst_272, %cst_271, %cst_271, %cst_272 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%30 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x48x8x8xf32>
    %padded_291 = tensor.pad %31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x48x8x8xf32> to tensor<1x48x10x10xf32>
    %32 = tensor.empty() : tensor<1x192x8x8xf32>
    %33 = linalg.fill ins(%cst_283 : f32) outs(%32 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    %34 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_291, %cst_270 : tensor<1x48x10x10xf32>, tensor<192x48x3x3xf32>) outs(%33 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %35 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %cst_269, %cst_268, %cst_268, %cst_269 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%34 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x192x8x8xf32>
    %36 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x192x8x8xf32>) outs(%32 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x192x8x8xf32>
    %37 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %35 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%32 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x192x8x8xf32>
    %38 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%37, %cst_267 : tensor<1x192x8x8xf32>, tensor<48x192x1x1xf32>) outs(%29 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %39 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %cst_272, %cst_271, %cst_271, %cst_272 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%38 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x48x8x8xf32>
    %40 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %31 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%28 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x48x8x8xf32>
    %padded_292 = tensor.pad %40 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x48x8x8xf32> to tensor<1x48x10x10xf32>
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_292, %cst_266 : tensor<1x48x10x10xf32>, tensor<192x48x3x3xf32>) outs(%33 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %42 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %cst_269, %cst_268, %cst_268, %cst_269 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%41 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x192x8x8xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42 : tensor<1x192x8x8xf32>) outs(%32 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x192x8x8xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %42 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%32 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x192x8x8xf32>
    %45 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%44, %cst_265 : tensor<1x192x8x8xf32>, tensor<48x192x1x1xf32>) outs(%29 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %46 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %cst_272, %cst_271, %cst_271, %cst_272 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%45 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x48x8x8xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %40 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%28 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x48x8x8xf32>
    %padded_293 = tensor.pad %47 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x48x8x8xf32> to tensor<1x48x10x10xf32>
    %48 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_293, %cst_264 : tensor<1x48x10x10xf32>, tensor<192x48x3x3xf32>) outs(%33 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %49 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %cst_269, %cst_268, %cst_268, %cst_269 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%48 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x192x8x8xf32>
    %50 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49 : tensor<1x192x8x8xf32>) outs(%32 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x192x8x8xf32>
    %51 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %49 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%32 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x192x8x8xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%51, %cst_263 : tensor<1x192x8x8xf32>, tensor<48x192x1x1xf32>) outs(%29 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %53 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_272, %cst_271, %cst_271, %cst_272 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%52 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x48x8x8xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %47 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%28 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x48x8x8xf32>
    %padded_294 = tensor.pad %54 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x48x8x8xf32> to tensor<1x48x10x10xf32>
    %55 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_294, %cst_262 : tensor<1x48x10x10xf32>, tensor<192x48x3x3xf32>) outs(%33 : tensor<1x192x8x8xf32>) -> tensor<1x192x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %56 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %cst_269, %cst_268, %cst_268, %cst_269 : tensor<1x192x8x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%55 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x192x8x8xf32>
    %57 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x192x8x8xf32>) outs(%32 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x192x8x8xf32>
    %58 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %56 : tensor<1x192x8x8xf32>, tensor<1x192x8x8xf32>) outs(%32 : tensor<1x192x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x192x8x8xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%58, %cst_261 : tensor<1x192x8x8xf32>, tensor<48x192x1x1xf32>) outs(%29 : tensor<1x48x8x8xf32>) -> tensor<1x48x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %60 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %cst_272, %cst_271, %cst_271, %cst_272 : tensor<1x48x8x8xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%59 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x48x8x8xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %54 : tensor<1x48x8x8xf32>, tensor<1x48x8x8xf32>) outs(%28 : tensor<1x48x8x8xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x48x8x8xf32>
    %padded_295 = tensor.pad %61 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x48x8x8xf32> to tensor<1x48x10x10xf32>
    %62 = tensor.empty() : tensor<1x192x4x4xf32>
    %63 = linalg.fill ins(%cst_283 : f32) outs(%62 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    %64 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_295, %cst_260 : tensor<1x48x10x10xf32>, tensor<192x48x3x3xf32>) outs(%63 : tensor<1x192x4x4xf32>) -> tensor<1x192x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %65 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %cst_269, %cst_268, %cst_268, %cst_269 : tensor<1x192x4x4xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%64 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x192x4x4xf32>
    %66 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65 : tensor<1x192x4x4xf32>) outs(%62 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x192x4x4xf32>
    %67 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %65 : tensor<1x192x4x4xf32>, tensor<1x192x4x4xf32>) outs(%62 : tensor<1x192x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x192x4x4xf32>
    %68 = tensor.empty() : tensor<1x80x4x4xf32>
    %69 = linalg.fill ins(%cst_283 : f32) outs(%68 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%67, %cst_259 : tensor<1x192x4x4xf32>, tensor<80x192x1x1xf32>) outs(%69 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %71 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %cst_258, %cst_257, %cst_257, %cst_258 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%70 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x80x4x4xf32>
    %padded_296 = tensor.pad %71 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x80x4x4xf32> to tensor<1x80x6x6xf32>
    %72 = tensor.empty() : tensor<1x320x4x4xf32>
    %73 = linalg.fill ins(%cst_283 : f32) outs(%72 : tensor<1x320x4x4xf32>) -> tensor<1x320x4x4xf32>
    %74 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_296, %cst_256 : tensor<1x80x6x6xf32>, tensor<320x80x3x3xf32>) outs(%73 : tensor<1x320x4x4xf32>) -> tensor<1x320x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %75 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %cst_255, %cst_254, %cst_254, %cst_255 : tensor<1x320x4x4xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%74 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x320x4x4xf32>
    %76 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x320x4x4xf32>) outs(%72 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x320x4x4xf32>
    %77 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %75 : tensor<1x320x4x4xf32>, tensor<1x320x4x4xf32>) outs(%72 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x320x4x4xf32>
    %78 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%77, %cst_253 : tensor<1x320x4x4xf32>, tensor<80x320x1x1xf32>) outs(%69 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %79 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %cst_258, %cst_257, %cst_257, %cst_258 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%78 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x80x4x4xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %71 : tensor<1x80x4x4xf32>, tensor<1x80x4x4xf32>) outs(%68 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x80x4x4xf32>
    %padded_297 = tensor.pad %80 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x80x4x4xf32> to tensor<1x80x6x6xf32>
    %81 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_297, %cst_252 : tensor<1x80x6x6xf32>, tensor<320x80x3x3xf32>) outs(%73 : tensor<1x320x4x4xf32>) -> tensor<1x320x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %82 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %cst_255, %cst_254, %cst_254, %cst_255 : tensor<1x320x4x4xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%81 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x320x4x4xf32>
    %83 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x320x4x4xf32>) outs(%72 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x320x4x4xf32>
    %84 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %82 : tensor<1x320x4x4xf32>, tensor<1x320x4x4xf32>) outs(%72 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x320x4x4xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%84, %cst_251 : tensor<1x320x4x4xf32>, tensor<80x320x1x1xf32>) outs(%69 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %86 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_258, %cst_257, %cst_257, %cst_258 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%85 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x80x4x4xf32>
    %87 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %80 : tensor<1x80x4x4xf32>, tensor<1x80x4x4xf32>) outs(%68 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x80x4x4xf32>
    %padded_298 = tensor.pad %87 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x80x4x4xf32> to tensor<1x80x6x6xf32>
    %88 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_298, %cst_250 : tensor<1x80x6x6xf32>, tensor<320x80x3x3xf32>) outs(%73 : tensor<1x320x4x4xf32>) -> tensor<1x320x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %89 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %cst_255, %cst_254, %cst_254, %cst_255 : tensor<1x320x4x4xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%88 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x320x4x4xf32>
    %90 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<1x320x4x4xf32>) outs(%72 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x320x4x4xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %89 : tensor<1x320x4x4xf32>, tensor<1x320x4x4xf32>) outs(%72 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x320x4x4xf32>
    %92 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%91, %cst_249 : tensor<1x320x4x4xf32>, tensor<80x320x1x1xf32>) outs(%69 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %93 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %cst_258, %cst_257, %cst_257, %cst_258 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%92 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x80x4x4xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %87 : tensor<1x80x4x4xf32>, tensor<1x80x4x4xf32>) outs(%68 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x80x4x4xf32>
    %padded_299 = tensor.pad %94 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x80x4x4xf32> to tensor<1x80x6x6xf32>
    %95 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_299, %cst_248 : tensor<1x80x6x6xf32>, tensor<320x80x3x3xf32>) outs(%73 : tensor<1x320x4x4xf32>) -> tensor<1x320x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %96 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %cst_255, %cst_254, %cst_254, %cst_255 : tensor<1x320x4x4xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%95 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x320x4x4xf32>
    %97 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x320x4x4xf32>) outs(%72 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x320x4x4xf32>
    %98 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %96 : tensor<1x320x4x4xf32>, tensor<1x320x4x4xf32>) outs(%72 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x320x4x4xf32>
    %99 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%98, %cst_247 : tensor<1x320x4x4xf32>, tensor<80x320x1x1xf32>) outs(%69 : tensor<1x80x4x4xf32>) -> tensor<1x80x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %100 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %cst_258, %cst_257, %cst_257, %cst_258 : tensor<1x80x4x4xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%99 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x80x4x4xf32>
    %101 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %94 : tensor<1x80x4x4xf32>, tensor<1x80x4x4xf32>) outs(%68 : tensor<1x80x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x80x4x4xf32>
    %102 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%101, %cst_246 : tensor<1x80x4x4xf32>, tensor<320x80x1x1xf32>) outs(%73 : tensor<1x320x4x4xf32>) -> tensor<1x320x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %103 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %cst_255, %cst_254, %cst_254, %cst_255 : tensor<1x320x4x4xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%102 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x320x4x4xf32>
    %104 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<1x320x4x4xf32>) outs(%72 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x320x4x4xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %103 : tensor<1x320x4x4xf32>, tensor<1x320x4x4xf32>) outs(%72 : tensor<1x320x4x4xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x320x4x4xf32>
    %padded_300 = tensor.pad %105 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x320x4x4xf32> to tensor<1x320x6x6xf32>
    %106 = tensor.empty() : tensor<1x320x2x2xf32>
    %107 = linalg.fill ins(%cst_283 : f32) outs(%106 : tensor<1x320x2x2xf32>) -> tensor<1x320x2x2xf32>
    %collapsed = tensor.collapse_shape %cst_245 [[0, 1], [2], [3]] : tensor<320x1x3x3xf32> into tensor<320x3x3xf32>
    %108 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_300, %collapsed : tensor<1x320x6x6xf32>, tensor<320x3x3xf32>) outs(%107 : tensor<1x320x2x2xf32>) -> tensor<1x320x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %109 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %cst_255, %cst_254, %cst_254, %cst_255 : tensor<1x320x2x2xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%108 : tensor<1x320x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x320x2x2xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x320x2x2xf32>) outs(%106 : tensor<1x320x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x320x2x2xf32>
    %111 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %109 : tensor<1x320x2x2xf32>, tensor<1x320x2x2xf32>) outs(%106 : tensor<1x320x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x320x2x2xf32>
    %112 = tensor.empty() : tensor<1x320x1x1xf32>
    %113 = linalg.fill ins(%cst_283 : f32) outs(%112 : tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %114 = tensor.empty() : tensor<2x2xf32>
    %115 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%111, %114 : tensor<1x320x2x2xf32>, tensor<2x2xf32>) outs(%113 : tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %116 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x320x1x1xf32>) outs(%112 : tensor<1x320x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x320x1x1xf32>
    %117 = tensor.empty() : tensor<1x20x1x1xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_244 : tensor<20xf32>) outs(%117 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x20x1x1xf32>
    %119 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%116, %cst_243 : tensor<1x320x1x1xf32>, tensor<20x320x1x1xf32>) outs(%118 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %120 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x20x1x1xf32>) outs(%117 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x20x1x1xf32>
    %121 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %119 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%117 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x20x1x1xf32>
    %122 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_254 : tensor<320xf32>) outs(%112 : tensor<1x320x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x320x1x1xf32>
    %123 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%121, %cst_242 : tensor<1x20x1x1xf32>, tensor<320x20x1x1xf32>) outs(%122 : tensor<1x320x1x1xf32>) -> tensor<1x320x1x1xf32>
    %124 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x320x1x1xf32>) outs(%112 : tensor<1x320x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x320x1x1xf32>
    %125 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %111 : tensor<1x320x1x1xf32>, tensor<1x320x2x2xf32>) outs(%106 : tensor<1x320x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x320x2x2xf32>
    %126 = tensor.empty() : tensor<1x160x2x2xf32>
    %127 = linalg.fill ins(%cst_283 : f32) outs(%126 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%125, %cst_241 : tensor<1x320x2x2xf32>, tensor<160x320x1x1xf32>) outs(%127 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %129 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_240, %cst_239, %cst_239, %cst_240 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%128 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x160x2x2xf32>
    %130 = tensor.empty() : tensor<1x640x2x2xf32>
    %131 = linalg.fill ins(%cst_283 : f32) outs(%130 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    %132 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%129, %cst_238 : tensor<1x160x2x2xf32>, tensor<640x160x1x1xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %133 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%132 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %134 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %135 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %133 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %padded_301 = tensor.pad %135 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x640x2x2xf32> to tensor<1x640x4x4xf32>
    %collapsed_302 = tensor.collapse_shape %cst_235 [[0, 1], [2], [3]] : tensor<640x1x3x3xf32> into tensor<640x3x3xf32>
    %136 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_301, %collapsed_302 : tensor<1x640x4x4xf32>, tensor<640x3x3xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %137 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%136 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %138 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %137 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %140 = tensor.empty() : tensor<1x640x1x1xf32>
    %141 = linalg.fill ins(%cst_283 : f32) outs(%140 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %142 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%139, %114 : tensor<1x640x2x2xf32>, tensor<2x2xf32>) outs(%141 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %143 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x1x1xf32>
    %144 = tensor.empty() : tensor<1x40x1x1xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_234 : tensor<40xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %146 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%143, %cst_233 : tensor<1x640x1x1xf32>, tensor<40x640x1x1xf32>) outs(%145 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %147 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x40x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %146 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x40x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_236 : tensor<640xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x640x1x1xf32>
    %150 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%148, %cst_232 : tensor<1x40x1x1xf32>, tensor<640x40x1x1xf32>) outs(%149 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %151 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x1x1xf32>
    %152 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %139 : tensor<1x640x1x1xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %153 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%152, %cst_231 : tensor<1x640x2x2xf32>, tensor<160x640x1x1xf32>) outs(%127 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %154 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %cst_240, %cst_239, %cst_239, %cst_240 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%153 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x160x2x2xf32>
    %155 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %129 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%126 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x160x2x2xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%155, %cst_230 : tensor<1x160x2x2xf32>, tensor<640x160x1x1xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %157 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%156 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %157 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %padded_303 = tensor.pad %159 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x640x2x2xf32> to tensor<1x640x4x4xf32>
    %collapsed_304 = tensor.collapse_shape %cst_229 [[0, 1], [2], [3]] : tensor<640x1x3x3xf32> into tensor<640x3x3xf32>
    %160 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_303, %collapsed_304 : tensor<1x640x4x4xf32>, tensor<640x3x3xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %161 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%160 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %162 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %161 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %164 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%163, %114 : tensor<1x640x2x2xf32>, tensor<2x2xf32>) outs(%141 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %165 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x1x1xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%165, %cst_228 : tensor<1x640x1x1xf32>, tensor<40x640x1x1xf32>) outs(%145 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %167 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x40x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %166 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x40x1x1xf32>
    %169 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%168, %cst_227 : tensor<1x40x1x1xf32>, tensor<640x40x1x1xf32>) outs(%149 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x1x1xf32>
    %171 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %163 : tensor<1x640x1x1xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %172 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%171, %cst_226 : tensor<1x640x2x2xf32>, tensor<160x640x1x1xf32>) outs(%127 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %173 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %cst_240, %cst_239, %cst_239, %cst_240 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%172 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x160x2x2xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %155 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%126 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x160x2x2xf32>
    %175 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%174, %cst_225 : tensor<1x160x2x2xf32>, tensor<640x160x1x1xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %176 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%175 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %176 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %padded_305 = tensor.pad %178 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x640x2x2xf32> to tensor<1x640x4x4xf32>
    %collapsed_306 = tensor.collapse_shape %cst_224 [[0, 1], [2], [3]] : tensor<640x1x3x3xf32> into tensor<640x3x3xf32>
    %179 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_305, %collapsed_306 : tensor<1x640x4x4xf32>, tensor<640x3x3xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %180 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%179 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %181 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %182 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %180 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %183 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%182, %114 : tensor<1x640x2x2xf32>, tensor<2x2xf32>) outs(%141 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %184 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x1x1xf32>
    %185 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%184, %cst_223 : tensor<1x640x1x1xf32>, tensor<40x640x1x1xf32>) outs(%145 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x40x1x1xf32>
    %187 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %185 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x40x1x1xf32>
    %188 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%187, %cst_222 : tensor<1x40x1x1xf32>, tensor<640x40x1x1xf32>) outs(%149 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x1x1xf32>
    %190 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %182 : tensor<1x640x1x1xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %cst_221 : tensor<1x640x2x2xf32>, tensor<160x640x1x1xf32>) outs(%127 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_240, %cst_239, %cst_239, %cst_240 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%191 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x160x2x2xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %174 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%126 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x160x2x2xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%193, %cst_220 : tensor<1x160x2x2xf32>, tensor<640x160x1x1xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%194 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %195 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %padded_307 = tensor.pad %197 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x640x2x2xf32> to tensor<1x640x4x4xf32>
    %collapsed_308 = tensor.collapse_shape %cst_219 [[0, 1], [2], [3]] : tensor<640x1x3x3xf32> into tensor<640x3x3xf32>
    %198 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_307, %collapsed_308 : tensor<1x640x4x4xf32>, tensor<640x3x3xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%198 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %201 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %199 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %202 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%201, %114 : tensor<1x640x2x2xf32>, tensor<2x2xf32>) outs(%141 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %203 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x1x1xf32>
    %204 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%203, %cst_218 : tensor<1x640x1x1xf32>, tensor<40x640x1x1xf32>) outs(%145 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %205 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x40x1x1xf32>
    %206 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %204 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x40x1x1xf32>
    %207 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%206, %cst_217 : tensor<1x40x1x1xf32>, tensor<640x40x1x1xf32>) outs(%149 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %208 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x1x1xf32>
    %209 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %201 : tensor<1x640x1x1xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %210 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%209, %cst_216 : tensor<1x640x2x2xf32>, tensor<160x640x1x1xf32>) outs(%127 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %211 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %cst_240, %cst_239, %cst_239, %cst_240 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%210 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x160x2x2xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %193 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%126 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x160x2x2xf32>
    %213 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%212, %cst_215 : tensor<1x160x2x2xf32>, tensor<640x160x1x1xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %214 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%213 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %215 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %216 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %214 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %padded_309 = tensor.pad %216 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x640x2x2xf32> to tensor<1x640x4x4xf32>
    %collapsed_310 = tensor.collapse_shape %cst_214 [[0, 1], [2], [3]] : tensor<640x1x3x3xf32> into tensor<640x3x3xf32>
    %217 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_309, %collapsed_310 : tensor<1x640x4x4xf32>, tensor<640x3x3xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %218 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%217 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %219 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %220 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %218 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %221 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%220, %114 : tensor<1x640x2x2xf32>, tensor<2x2xf32>) outs(%141 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %222 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x1x1xf32>
    %223 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%222, %cst_213 : tensor<1x640x1x1xf32>, tensor<40x640x1x1xf32>) outs(%145 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223 : tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x40x1x1xf32>
    %225 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %223 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x40x1x1xf32>
    %226 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%225, %cst_212 : tensor<1x40x1x1xf32>, tensor<640x40x1x1xf32>) outs(%149 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %227 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %220 : tensor<1x640x1x1xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %229 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%228, %cst_211 : tensor<1x640x2x2xf32>, tensor<160x640x1x1xf32>) outs(%127 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %230 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %cst_240, %cst_239, %cst_239, %cst_240 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%229 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x160x2x2xf32>
    %231 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %212 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%126 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x160x2x2xf32>
    %232 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%231, %cst_210 : tensor<1x160x2x2xf32>, tensor<640x160x1x1xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %233 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%232 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %234 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %235 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %233 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %padded_311 = tensor.pad %235 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x640x2x2xf32> to tensor<1x640x4x4xf32>
    %collapsed_312 = tensor.collapse_shape %cst_209 [[0, 1], [2], [3]] : tensor<640x1x3x3xf32> into tensor<640x3x3xf32>
    %236 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_311, %collapsed_312 : tensor<1x640x4x4xf32>, tensor<640x3x3xf32>) outs(%131 : tensor<1x640x2x2xf32>) -> tensor<1x640x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %237 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %cst_237, %cst_236, %cst_236, %cst_237 : tensor<1x640x2x2xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%236 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x640x2x2xf32>
    %238 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x2x2xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %237 : tensor<1x640x2x2xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %240 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%239, %114 : tensor<1x640x2x2xf32>, tensor<2x2xf32>) outs(%141 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %241 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x1x1xf32>
    %242 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%241, %cst_208 : tensor<1x640x1x1xf32>, tensor<40x640x1x1xf32>) outs(%145 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %243 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x40x1x1xf32>
    %244 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %242 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x40x1x1xf32>
    %245 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%244, %cst_207 : tensor<1x40x1x1xf32>, tensor<640x40x1x1xf32>) outs(%149 : tensor<1x640x1x1xf32>) -> tensor<1x640x1x1xf32>
    %246 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x640x1x1xf32>) outs(%140 : tensor<1x640x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x640x1x1xf32>
    %247 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %239 : tensor<1x640x1x1xf32>, tensor<1x640x2x2xf32>) outs(%130 : tensor<1x640x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x640x2x2xf32>
    %248 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%247, %cst_206 : tensor<1x640x2x2xf32>, tensor<160x640x1x1xf32>) outs(%127 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %249 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %cst_240, %cst_239, %cst_239, %cst_240 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%248 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x160x2x2xf32>
    %250 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %231 : tensor<1x160x2x2xf32>, tensor<1x160x2x2xf32>) outs(%126 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x160x2x2xf32>
    %251 = tensor.empty() : tensor<1x960x2x2xf32>
    %252 = linalg.fill ins(%cst_283 : f32) outs(%251 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    %253 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%250, %cst_205 : tensor<1x160x2x2xf32>, tensor<960x160x1x1xf32>) outs(%252 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %254 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%253 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x960x2x2xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254 : tensor<1x960x2x2xf32>) outs(%251 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x960x2x2xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %254 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%251 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x960x2x2xf32>
    %padded_313 = tensor.pad %256 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x960x2x2xf32> to tensor<1x960x4x4xf32>
    %collapsed_314 = tensor.collapse_shape %cst_202 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %257 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_313, %collapsed_314 : tensor<1x960x4x4xf32>, tensor<960x3x3xf32>) outs(%252 : tensor<1x960x2x2xf32>) -> tensor<1x960x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %258 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %cst_204, %cst_203, %cst_203, %cst_204 : tensor<1x960x2x2xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%257 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x960x2x2xf32>
    %259 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x960x2x2xf32>) outs(%251 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x960x2x2xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %258 : tensor<1x960x2x2xf32>, tensor<1x960x2x2xf32>) outs(%251 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x960x2x2xf32>
    %261 = tensor.empty() : tensor<1x960x1x1xf32>
    %262 = linalg.fill ins(%cst_283 : f32) outs(%261 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %263 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %114 : tensor<1x960x2x2xf32>, tensor<2x2xf32>) outs(%262 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %264 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x960x1x1xf32>) outs(%261 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x960x1x1xf32>
    %265 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%264, %cst_201 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%145 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %266 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x40x1x1xf32>
    %267 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %265 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%144 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x40x1x1xf32>
    %268 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_203 : tensor<960xf32>) outs(%261 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %269 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%267, %cst_200 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%268 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %270 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x960x1x1xf32>) outs(%261 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x960x1x1xf32>
    %271 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %260 : tensor<1x960x1x1xf32>, tensor<1x960x2x2xf32>) outs(%251 : tensor<1x960x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x960x2x2xf32>
    %272 = tensor.empty() : tensor<1x176x2x2xf32>
    %273 = linalg.fill ins(%cst_283 : f32) outs(%272 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    %274 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%271, %cst_199 : tensor<1x960x2x2xf32>, tensor<176x960x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%274 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %276 = tensor.empty() : tensor<1x1056x2x2xf32>
    %277 = linalg.fill ins(%cst_283 : f32) outs(%276 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    %278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%275, %cst_196 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %279 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%278 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %281 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280, %279 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_315 = tensor.pad %281 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_316 = tensor.collapse_shape %cst_193 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %282 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_315, %collapsed_316 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %283 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%282 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %285 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %283 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %286 = tensor.empty() : tensor<1x1056x1x1xf32>
    %287 = linalg.fill ins(%cst_283 : f32) outs(%286 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %288 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%285, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %289 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %290 = tensor.empty() : tensor<1x44x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_192 : tensor<44xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x44x1x1xf32>
    %292 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%289, %cst_191 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %293 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %294 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %292 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %295 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_194 : tensor<1056xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1056x1x1xf32>
    %296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%294, %cst_190 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %297 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %298 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297, %285 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %299 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%298, %cst_189 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %300 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%299 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %301 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %275 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %302 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%301, %cst_188 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %303 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%302 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %304 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %305 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %303 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_317 = tensor.pad %305 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_318 = tensor.collapse_shape %cst_187 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %306 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_317, %collapsed_318 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %307 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%306 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %308 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %307 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %310 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%309, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %312 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%311, %cst_186 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %313 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %314 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %312 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %315 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%314, %cst_185 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %316 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %317 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316, %309 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %318 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%317, %cst_184 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %319 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%318 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %320 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %301 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %321 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%320, %cst_183 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %322 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%321 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %324 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %322 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_319 = tensor.pad %324 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_320 = tensor.collapse_shape %cst_182 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %325 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_319, %collapsed_320 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %326 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%325 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %327 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %328 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %326 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %329 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%328, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %330 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %331 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %cst_181 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %332 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %333 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %331 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %334 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%333, %cst_180 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %335 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %336 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335, %328 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %337 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%336, %cst_179 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %338 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%337 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %320 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %340 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%339, %cst_178 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %341 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%340 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %342 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %341 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_321 = tensor.pad %343 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_322 = tensor.collapse_shape %cst_177 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %344 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_321, %collapsed_322 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %345 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%344 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %346 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %345 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %348 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%347, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %350 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %cst_176 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %351 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %350 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %353 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%352, %cst_175 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %354 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %355 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %347 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %356 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%355, %cst_174 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %357 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%356 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %358 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %339 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %359 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%358, %cst_173 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %360 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%359 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %361 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %362 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %360 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_323 = tensor.pad %362 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_324 = tensor.collapse_shape %cst_172 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %363 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_323, %collapsed_324 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %364 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%363 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %365 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %366 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %364 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %367 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%366, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %368 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %369 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%368, %cst_171 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %370 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %371 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370, %369 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %372 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%371, %cst_170 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %373 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %374 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %366 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %375 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%374, %cst_169 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %376 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%375 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %377 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376, %358 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %378 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%377, %cst_168 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %379 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%378 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %380 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %381 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380, %379 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_325 = tensor.pad %381 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_326 = tensor.collapse_shape %cst_167 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %382 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_325, %collapsed_326 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %383 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%382 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %384 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %385 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %383 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %386 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%385, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %387 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %388 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%387, %cst_166 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %389 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %390 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %388 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %391 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%390, %cst_165 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %392 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %393 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %385 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %394 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%393, %cst_164 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %395 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%394 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %396 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395, %377 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %397 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%396, %cst_163 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %398 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%397 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %399 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %400 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %398 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_327 = tensor.pad %400 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_328 = tensor.collapse_shape %cst_162 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %401 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_327, %collapsed_328 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %402 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%401 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %403 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %404 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %402 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %405 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%404, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %406 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %407 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%406, %cst_161 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %408 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %409 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %407 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %410 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%409, %cst_160 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %411 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %412 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411, %404 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %413 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%412, %cst_159 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %414 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%413 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %415 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %396 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %416 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%415, %cst_158 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %417 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%416 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %418 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %419 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %417 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_329 = tensor.pad %419 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_330 = tensor.collapse_shape %cst_157 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %420 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_329, %collapsed_330 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %421 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%420 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %422 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %423 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %421 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %424 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%423, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %425 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %426 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%425, %cst_156 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %427 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %428 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427, %426 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %429 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%428, %cst_155 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %430 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %431 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430, %423 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %432 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%431, %cst_154 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %433 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%432 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %434 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%433, %415 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %435 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%434, %cst_153 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %436 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%435 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %437 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %438 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%437, %436 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_331 = tensor.pad %438 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_332 = tensor.collapse_shape %cst_152 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %439 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_331, %collapsed_332 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %440 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%439 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %441 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %442 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %440 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %443 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%442, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %444 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %445 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%444, %cst_151 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %446 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %447 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446, %445 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %448 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%447, %cst_150 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %449 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %450 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449, %442 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %451 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%450, %cst_149 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %452 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%451 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %453 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452, %434 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %454 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%453, %cst_148 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %455 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%454 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %456 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %457 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %455 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_333 = tensor.pad %457 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_334 = tensor.collapse_shape %cst_147 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %458 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_333, %collapsed_334 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %459 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%458 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %460 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %461 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460, %459 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %462 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%461, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %463 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %464 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%463, %cst_146 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %465 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %466 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465, %464 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %467 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%466, %cst_145 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %468 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %469 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %461 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %470 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%469, %cst_144 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %471 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%470 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %472 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %453 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %473 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%472, %cst_143 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %474 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%473 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %475 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %476 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475, %474 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_335 = tensor.pad %476 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_336 = tensor.collapse_shape %cst_142 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %477 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_335, %collapsed_336 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %478 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%477 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %479 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %480 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479, %478 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %481 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%480, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %482 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %483 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%482, %cst_141 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %484 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %485 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %483 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %486 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%485, %cst_140 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %487 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %488 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487, %480 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %489 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%488, %cst_139 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %490 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%489 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %491 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490, %472 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %492 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%491, %cst_138 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %493 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%492 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %494 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %495 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %493 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_337 = tensor.pad %495 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_338 = tensor.collapse_shape %cst_137 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %496 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_337, %collapsed_338 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %497 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%496 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %498 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %499 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %497 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %500 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%499, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %501 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %502 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%501, %cst_136 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %503 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %504 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503, %502 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %505 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%504, %cst_135 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %506 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %507 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%506, %499 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %508 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%507, %cst_134 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %509 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%508 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %510 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509, %491 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %511 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%510, %cst_133 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %512 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%511 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %513 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %514 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513, %512 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_339 = tensor.pad %514 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_340 = tensor.collapse_shape %cst_132 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %515 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_339, %collapsed_340 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %516 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%515 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %517 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %518 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517, %516 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %519 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%518, %114 : tensor<1x1056x2x2xf32>, tensor<2x2xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %520 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.divf %in, %cst_285 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %521 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%520, %cst_131 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %522 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %523 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522, %521 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %524 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%523, %cst_130 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %525 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %526 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %518 : tensor<1x1056x1x1xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %527 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%526, %cst_129 : tensor<1x1056x2x2xf32>, tensor<176x1056x1x1xf32>) outs(%273 : tensor<1x176x2x2xf32>) -> tensor<1x176x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %528 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527, %cst_198, %cst_197, %cst_197, %cst_198 : tensor<1x176x2x2xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>, tensor<176xf32>) outs(%527 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x176x2x2xf32>
    %529 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528, %510 : tensor<1x176x2x2xf32>, tensor<1x176x2x2xf32>) outs(%272 : tensor<1x176x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x176x2x2xf32>
    %530 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%529, %cst_128 : tensor<1x176x2x2xf32>, tensor<1056x176x1x1xf32>) outs(%277 : tensor<1x1056x2x2xf32>) -> tensor<1x1056x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %531 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x2x2xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%530 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x2x2xf32>
    %532 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531 : tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x2x2xf32>
    %533 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %531 : tensor<1x1056x2x2xf32>, tensor<1x1056x2x2xf32>) outs(%276 : tensor<1x1056x2x2xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x2x2xf32>
    %padded_341 = tensor.pad %533 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1056x2x2xf32> to tensor<1x1056x4x4xf32>
    %collapsed_342 = tensor.collapse_shape %cst_127 [[0, 1], [2], [3]] : tensor<1056x1x3x3xf32> into tensor<1056x3x3xf32>
    %534 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_341, %collapsed_342 : tensor<1x1056x4x4xf32>, tensor<1056x3x3xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %535 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534, %cst_195, %cst_194, %cst_194, %cst_195 : tensor<1x1056x1x1xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>, tensor<1056xf32>) outs(%534 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1056x1x1xf32>
    %536 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %537 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %535 : tensor<1x1056x1x1xf32>, tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %538 = tensor.empty() : tensor<1x1xf32>
    %539 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%537, %538 : tensor<1x1056x1x1xf32>, tensor<1x1xf32>) outs(%287 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %540 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%539, %cst_126 : tensor<1x1056x1x1xf32>, tensor<44x1056x1x1xf32>) outs(%291 : tensor<1x44x1x1xf32>) -> tensor<1x44x1x1xf32>
    %541 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540 : tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x44x1x1xf32>
    %542 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541, %540 : tensor<1x44x1x1xf32>, tensor<1x44x1x1xf32>) outs(%290 : tensor<1x44x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x44x1x1xf32>
    %543 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%542, %cst_125 : tensor<1x44x1x1xf32>, tensor<1056x44x1x1xf32>) outs(%295 : tensor<1x1056x1x1xf32>) -> tensor<1x1056x1x1xf32>
    %544 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%543 : tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1056x1x1xf32>
    %545 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544, %537 : tensor<1x1056x1x1xf32>, tensor<1x1056x1x1xf32>) outs(%286 : tensor<1x1056x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1056x1x1xf32>
    %546 = tensor.empty() : tensor<1x304x1x1xf32>
    %547 = linalg.fill ins(%cst_283 : f32) outs(%546 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    %548 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%545, %cst_124 : tensor<1x1056x1x1xf32>, tensor<304x1056x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %549 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%548 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %550 = tensor.empty() : tensor<1x1824x1x1xf32>
    %551 = linalg.fill ins(%cst_283 : f32) outs(%550 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %552 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%549, %cst_121 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %553 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%552 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %554 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %555 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554, %553 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_343 = tensor.pad %555 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_344 = tensor.collapse_shape %cst_118 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %556 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_343, %collapsed_344 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %557 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%556 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %558 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %559 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558, %557 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %560 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%559, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %561 = tensor.empty() : tensor<1x76x1x1xf32>
    %562 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_117 : tensor<76xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x76x1x1xf32>
    %563 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%560, %cst_116 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %564 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %565 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564, %563 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %566 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_119 : tensor<1824xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1824x1x1xf32>
    %567 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%565, %cst_115 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %568 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %569 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568, %559 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %570 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%569, %cst_114 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %571 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%570 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %572 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571, %549 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %573 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%572, %cst_113 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %574 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%573 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %575 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %576 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575, %574 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_345 = tensor.pad %576 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_346 = tensor.collapse_shape %cst_112 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %577 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_345, %collapsed_346 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %578 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%577 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %579 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%578 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %580 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579, %578 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %581 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%580, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %582 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%581, %cst_111 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %583 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %584 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583, %582 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %585 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%584, %cst_110 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %586 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%585 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %587 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586, %580 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %588 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%587, %cst_109 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %589 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%588 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %590 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%589, %572 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %591 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%590, %cst_108 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %592 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%591 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %593 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %594 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593, %592 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_347 = tensor.pad %594 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_348 = tensor.collapse_shape %cst_107 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %595 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_347, %collapsed_348 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %596 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%595 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %597 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %598 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%597, %596 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %599 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%598, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %600 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%599, %cst_106 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %601 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%600 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %602 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601, %600 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %603 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%602, %cst_105 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %604 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %605 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604, %598 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %606 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%605, %cst_104 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %607 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%606 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %608 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%607, %590 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %609 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%608, %cst_103 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %610 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%609 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %612 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611, %610 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_349 = tensor.pad %612 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_350 = tensor.collapse_shape %cst_102 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %613 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_349, %collapsed_350 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %614 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%613 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %615 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %616 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615, %614 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %617 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%616, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %618 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%617, %cst_101 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %619 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %620 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619, %618 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %621 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%620, %cst_100 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %622 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %623 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622, %616 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %624 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%623, %cst_99 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %625 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%624 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %626 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%625, %608 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %627 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%626, %cst_98 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %628 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%627, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%627 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %629 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %630 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%629, %628 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_351 = tensor.pad %630 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_352 = tensor.collapse_shape %cst_97 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %631 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_351, %collapsed_352 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %632 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%631 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %633 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%632 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %634 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633, %632 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %635 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%634, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %636 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%635, %cst_96 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %637 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %638 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%637, %636 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %639 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%638, %cst_95 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %640 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %641 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640, %634 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %642 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%641, %cst_94 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %643 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%642 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %644 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643, %626 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %645 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%644, %cst_93 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %646 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%645, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%645 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %647 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %648 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%647, %646 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_353 = tensor.pad %648 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_354 = tensor.collapse_shape %cst_92 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %649 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_353, %collapsed_354 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %650 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%649 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %651 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%650 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %652 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651, %650 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %653 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%652, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %654 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%653, %cst_91 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %655 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%654 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %656 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655, %654 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %657 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%656, %cst_90 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %658 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%657 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %659 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658, %652 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %660 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%659, %cst_89 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %661 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%660, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%660 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %662 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661, %644 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %663 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%662, %cst_88 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %664 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%663 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %665 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%664 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %666 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%665, %664 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_355 = tensor.pad %666 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_356 = tensor.collapse_shape %cst_87 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %667 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_355, %collapsed_356 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %668 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%667, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%667 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %669 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %670 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669, %668 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %671 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%670, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %672 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%671, %cst_86 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %673 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %674 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%673, %672 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %675 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%674, %cst_85 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %676 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %677 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676, %670 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %678 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%677, %cst_84 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %679 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%678, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%678 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %680 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%679, %662 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %681 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%680, %cst_83 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %682 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%681, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%681 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %683 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%682 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %684 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%683, %682 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_357 = tensor.pad %684 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_358 = tensor.collapse_shape %cst_82 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %685 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_357, %collapsed_358 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %686 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%685, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%685 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %687 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %688 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%687, %686 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %689 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%688, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %690 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%689, %cst_81 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %691 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%690 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %692 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%691, %690 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %693 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%692, %cst_80 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %694 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%693 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %695 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694, %688 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %696 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%695, %cst_79 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %697 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%696, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%696 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %698 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%697, %680 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %699 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%698, %cst_78 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %700 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%699, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%699 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %701 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%700 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %702 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%701, %700 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_359 = tensor.pad %702 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_360 = tensor.collapse_shape %cst_77 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %703 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_359, %collapsed_360 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %704 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%703 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %705 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%704 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %706 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705, %704 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %707 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%706, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %708 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%707, %cst_76 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %709 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%708 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %710 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%709, %708 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %711 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%710, %cst_75 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %712 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%711 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %713 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%712, %706 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %714 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%713, %cst_74 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %715 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%714, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%714 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %716 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%715, %698 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %717 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%716, %cst_73 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %718 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%717, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%717 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %719 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%718 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %720 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719, %718 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_361 = tensor.pad %720 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_362 = tensor.collapse_shape %cst_72 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %721 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_361, %collapsed_362 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %722 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%721, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%721 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %723 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%722 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %724 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%723, %722 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %725 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%724, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %726 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%725, %cst_71 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %727 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %728 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%727, %726 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %729 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%728, %cst_70 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %730 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%729 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %731 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%730, %724 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %732 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%731, %cst_69 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %733 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%732, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%732 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %734 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733, %716 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %735 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%734, %cst_68 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %736 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%735 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %737 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%736 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %738 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%737, %736 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_363 = tensor.pad %738 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_364 = tensor.collapse_shape %cst_67 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %739 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_363, %collapsed_364 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %740 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%739, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%739 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %741 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%740 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %742 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%741, %740 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %743 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%742, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %744 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%743, %cst_66 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %745 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%744 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %746 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%745, %744 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %747 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%746, %cst_65 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %748 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%747 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %749 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%748, %742 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %750 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%749, %cst_64 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %751 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%750, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%750 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %752 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%751, %734 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %753 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%752, %cst_63 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %754 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%753, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%753 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %755 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%754 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %756 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%755, %754 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_365 = tensor.pad %756 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_366 = tensor.collapse_shape %cst_62 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %757 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_365, %collapsed_366 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %758 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%757, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%757 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %759 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%758 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %760 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%759, %758 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %761 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%760, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %762 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%761, %cst_61 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %763 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%762 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %764 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%763, %762 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %765 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%764, %cst_60 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %766 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%765 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %767 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%766, %760 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %768 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%767, %cst_59 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %769 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%768, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%768 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %770 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%769, %752 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %771 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%770, %cst_58 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %772 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%771, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%771 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %773 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%772 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %774 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%773, %772 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_367 = tensor.pad %774 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_368 = tensor.collapse_shape %cst_57 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %775 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_367, %collapsed_368 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %776 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%775, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%775 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %777 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%776 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %778 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%777, %776 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %779 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%778, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %780 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%779, %cst_56 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %781 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%780 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %782 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%781, %780 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %783 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%782, %cst_55 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %784 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%783 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %785 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%784, %778 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %786 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%785, %cst_54 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %787 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%786, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%786 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %788 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%787, %770 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %789 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%788, %cst_53 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %790 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%789, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%789 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %791 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%790 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %792 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%791, %790 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_369 = tensor.pad %792 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_370 = tensor.collapse_shape %cst_52 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %793 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_369, %collapsed_370 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %794 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%793, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%793 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %795 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%794 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %796 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%795, %794 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %797 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%796, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %798 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%797, %cst_51 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %799 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%798 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %800 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%799, %798 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %801 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%800, %cst_50 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %802 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%801 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %803 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%802, %796 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %804 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%803, %cst_49 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %805 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%804, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%804 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %806 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%805, %788 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %807 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%806, %cst_48 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %808 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%807, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%807 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %809 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%808 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %810 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%809, %808 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_371 = tensor.pad %810 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_372 = tensor.collapse_shape %cst_47 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %811 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_371, %collapsed_372 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %812 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%811, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%811 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %813 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%812 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %814 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%813, %812 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %815 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%814, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %816 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%815, %cst_46 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %817 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%816 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %818 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%817, %816 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %819 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%818, %cst_45 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %820 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%819 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %821 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%820, %814 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %822 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%821, %cst_44 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %823 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%822, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%822 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %824 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%823, %806 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %825 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%824, %cst_43 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %826 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%825, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%825 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %827 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%826 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %828 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%827, %826 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_373 = tensor.pad %828 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_374 = tensor.collapse_shape %cst_42 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %829 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_373, %collapsed_374 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %830 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%829, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%829 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %831 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%830 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %832 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%831, %830 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %833 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%832, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %834 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%833, %cst_41 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %835 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%834 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %836 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%835, %834 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %837 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%836, %cst_40 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %838 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%837 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %839 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%838, %832 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %840 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%839, %cst_39 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %841 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%840, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%840 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %842 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%841, %824 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %843 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%842, %cst_38 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %844 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%843, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%843 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %845 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%844 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %846 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%845, %844 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_375 = tensor.pad %846 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_376 = tensor.collapse_shape %cst_37 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %847 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_375, %collapsed_376 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %848 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%847, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%847 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %849 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%848 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %850 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%849, %848 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %851 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%850, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %852 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%851, %cst_36 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %853 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%852 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %854 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%853, %852 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %855 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%854, %cst_35 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %856 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%855 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %857 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%856, %850 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %858 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%857, %cst_34 : tensor<1x1824x1x1xf32>, tensor<304x1824x1x1xf32>) outs(%547 : tensor<1x304x1x1xf32>) -> tensor<1x304x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %859 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%858, %cst_123, %cst_122, %cst_122, %cst_123 : tensor<1x304x1x1xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>, tensor<304xf32>) outs(%858 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x304x1x1xf32>
    %860 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%859, %842 : tensor<1x304x1x1xf32>, tensor<1x304x1x1xf32>) outs(%546 : tensor<1x304x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x304x1x1xf32>
    %861 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%860, %cst_33 : tensor<1x304x1x1xf32>, tensor<1824x304x1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %862 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%861, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%861 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %863 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%862 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %864 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%863, %862 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %padded_377 = tensor.pad %864 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x1824x1x1xf32> to tensor<1x1824x3x3xf32>
    %collapsed_378 = tensor.collapse_shape %cst_32 [[0, 1], [2], [3]] : tensor<1824x1x3x3xf32> into tensor<1824x3x3xf32>
    %865 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_377, %collapsed_378 : tensor<1x1824x3x3xf32>, tensor<1824x3x3xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %866 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%865, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1824x1x1xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>, tensor<1824xf32>) outs(%865 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1824x1x1xf32>
    %867 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%866 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %868 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%867, %866 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %869 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%868, %538 : tensor<1x1824x1x1xf32>, tensor<1x1xf32>) outs(%551 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %870 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%869, %cst_31 : tensor<1x1824x1x1xf32>, tensor<76x1824x1x1xf32>) outs(%562 : tensor<1x76x1x1xf32>) -> tensor<1x76x1x1xf32>
    %871 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%870 : tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x76x1x1xf32>
    %872 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%871, %870 : tensor<1x76x1x1xf32>, tensor<1x76x1x1xf32>) outs(%561 : tensor<1x76x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x76x1x1xf32>
    %873 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%872, %cst_30 : tensor<1x76x1x1xf32>, tensor<1824x76x1x1xf32>) outs(%566 : tensor<1x1824x1x1xf32>) -> tensor<1x1824x1x1xf32>
    %874 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%873 : tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1824x1x1xf32>
    %875 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%874, %868 : tensor<1x1824x1x1xf32>, tensor<1x1824x1x1xf32>) outs(%550 : tensor<1x1824x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1824x1x1xf32>
    %876 = tensor.empty() : tensor<1x512x1x1xf32>
    %877 = linalg.fill ins(%cst_283 : f32) outs(%876 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %878 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%875, %cst_29 : tensor<1x1824x1x1xf32>, tensor<512x1824x1x1xf32>) outs(%877 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %879 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%878, %cst_28, %cst_27, %cst_27, %cst_28 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%878 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x512x1x1xf32>
    %880 = tensor.empty() : tensor<1x3072x1x1xf32>
    %881 = linalg.fill ins(%cst_283 : f32) outs(%880 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %882 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%879, %cst_26 : tensor<1x512x1x1xf32>, tensor<3072x512x1x1xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %883 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%882, %cst_25, %cst_24, %cst_24, %cst_25 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%882 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x3072x1x1xf32>
    %884 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%883 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %885 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%884, %883 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %padded_379 = tensor.pad %885 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x3072x1x1xf32> to tensor<1x3072x3x3xf32>
    %collapsed_380 = tensor.collapse_shape %cst_23 [[0, 1], [2], [3]] : tensor<3072x1x3x3xf32> into tensor<3072x3x3xf32>
    %886 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_379, %collapsed_380 : tensor<1x3072x3x3xf32>, tensor<3072x3x3xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %887 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%886, %cst_25, %cst_24, %cst_24, %cst_25 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%886 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x3072x1x1xf32>
    %888 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%887 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %889 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%888, %887 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %890 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%889, %538 : tensor<1x3072x1x1xf32>, tensor<1x1xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %891 = tensor.empty() : tensor<1x128x1x1xf32>
    %892 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_22 : tensor<128xf32>) outs(%891 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x1x1xf32>
    %893 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%890, %cst_21 : tensor<1x3072x1x1xf32>, tensor<128x3072x1x1xf32>) outs(%892 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %894 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%893 : tensor<1x128x1x1xf32>) outs(%891 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x128x1x1xf32>
    %895 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%894, %893 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%891 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x128x1x1xf32>
    %896 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_24 : tensor<3072xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x1x1xf32>
    %897 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%895, %cst_20 : tensor<1x128x1x1xf32>, tensor<3072x128x1x1xf32>) outs(%896 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %898 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%897 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %899 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%898, %889 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %900 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%899, %cst_19 : tensor<1x3072x1x1xf32>, tensor<512x3072x1x1xf32>) outs(%877 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %901 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%900, %cst_28, %cst_27, %cst_27, %cst_28 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%900 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x512x1x1xf32>
    %902 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%901, %879 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%876 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x512x1x1xf32>
    %903 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%902, %cst_18 : tensor<1x512x1x1xf32>, tensor<3072x512x1x1xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %904 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%903, %cst_25, %cst_24, %cst_24, %cst_25 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%903 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x3072x1x1xf32>
    %905 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%904 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %906 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%905, %904 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %padded_381 = tensor.pad %906 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x3072x1x1xf32> to tensor<1x3072x3x3xf32>
    %collapsed_382 = tensor.collapse_shape %cst_17 [[0, 1], [2], [3]] : tensor<3072x1x3x3xf32> into tensor<3072x3x3xf32>
    %907 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_381, %collapsed_382 : tensor<1x3072x3x3xf32>, tensor<3072x3x3xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %908 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%907, %cst_25, %cst_24, %cst_24, %cst_25 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%907 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x3072x1x1xf32>
    %909 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%908 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %910 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%909, %908 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %911 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%910, %538 : tensor<1x3072x1x1xf32>, tensor<1x1xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %912 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%911, %cst_16 : tensor<1x3072x1x1xf32>, tensor<128x3072x1x1xf32>) outs(%892 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %913 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%912 : tensor<1x128x1x1xf32>) outs(%891 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x128x1x1xf32>
    %914 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%913, %912 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%891 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x128x1x1xf32>
    %915 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%914, %cst_15 : tensor<1x128x1x1xf32>, tensor<3072x128x1x1xf32>) outs(%896 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %916 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%915 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %917 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%916, %910 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %918 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%917, %cst_14 : tensor<1x3072x1x1xf32>, tensor<512x3072x1x1xf32>) outs(%877 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %919 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%918, %cst_28, %cst_27, %cst_27, %cst_28 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%918 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x512x1x1xf32>
    %920 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%919, %902 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%876 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x512x1x1xf32>
    %921 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%920, %cst_13 : tensor<1x512x1x1xf32>, tensor<3072x512x1x1xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %922 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%921, %cst_25, %cst_24, %cst_24, %cst_25 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%921 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x3072x1x1xf32>
    %923 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%922 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %924 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%923, %922 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %padded_383 = tensor.pad %924 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x3072x1x1xf32> to tensor<1x3072x3x3xf32>
    %collapsed_384 = tensor.collapse_shape %cst_12 [[0, 1], [2], [3]] : tensor<3072x1x3x3xf32> into tensor<3072x3x3xf32>
    %925 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_383, %collapsed_384 : tensor<1x3072x3x3xf32>, tensor<3072x3x3xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %926 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%925, %cst_25, %cst_24, %cst_24, %cst_25 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%925 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x3072x1x1xf32>
    %927 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%926 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %928 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%927, %926 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %929 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%928, %538 : tensor<1x3072x1x1xf32>, tensor<1x1xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %930 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%929, %cst_11 : tensor<1x3072x1x1xf32>, tensor<128x3072x1x1xf32>) outs(%892 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %931 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%930 : tensor<1x128x1x1xf32>) outs(%891 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x128x1x1xf32>
    %932 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%931, %930 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%891 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x128x1x1xf32>
    %933 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%932, %cst_10 : tensor<1x128x1x1xf32>, tensor<3072x128x1x1xf32>) outs(%896 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %934 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%933 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %935 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%934, %928 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %936 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%935, %cst_9 : tensor<1x3072x1x1xf32>, tensor<512x3072x1x1xf32>) outs(%877 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %937 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%936, %cst_28, %cst_27, %cst_27, %cst_28 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%936 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x512x1x1xf32>
    %938 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%937, %920 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%876 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x512x1x1xf32>
    %939 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%938, %cst_8 : tensor<1x512x1x1xf32>, tensor<3072x512x1x1xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %940 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%939, %cst_25, %cst_24, %cst_24, %cst_25 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%939 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x3072x1x1xf32>
    %941 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%940 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %942 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%941, %940 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %padded_385 = tensor.pad %942 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_283 : f32
    } : tensor<1x3072x1x1xf32> to tensor<1x3072x3x3xf32>
    %collapsed_386 = tensor.collapse_shape %cst_7 [[0, 1], [2], [3]] : tensor<3072x1x3x3xf32> into tensor<3072x3x3xf32>
    %943 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_385, %collapsed_386 : tensor<1x3072x3x3xf32>, tensor<3072x3x3xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %944 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%943, %cst_25, %cst_24, %cst_24, %cst_25 : tensor<1x3072x1x1xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>, tensor<3072xf32>) outs(%943 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x3072x1x1xf32>
    %945 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%944 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %946 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%945, %944 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %947 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%946, %538 : tensor<1x3072x1x1xf32>, tensor<1x1xf32>) outs(%881 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %948 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%947, %cst_6 : tensor<1x3072x1x1xf32>, tensor<128x3072x1x1xf32>) outs(%892 : tensor<1x128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %949 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%948 : tensor<1x128x1x1xf32>) outs(%891 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x128x1x1xf32>
    %950 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%949, %948 : tensor<1x128x1x1xf32>, tensor<1x128x1x1xf32>) outs(%891 : tensor<1x128x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x128x1x1xf32>
    %951 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%950, %cst_5 : tensor<1x128x1x1xf32>, tensor<3072x128x1x1xf32>) outs(%896 : tensor<1x3072x1x1xf32>) -> tensor<1x3072x1x1xf32>
    %952 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%951 : tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x3072x1x1xf32>
    %953 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%952, %946 : tensor<1x3072x1x1xf32>, tensor<1x3072x1x1xf32>) outs(%880 : tensor<1x3072x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x3072x1x1xf32>
    %954 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%953, %cst_4 : tensor<1x3072x1x1xf32>, tensor<512x3072x1x1xf32>) outs(%877 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %955 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%954, %cst_28, %cst_27, %cst_27, %cst_28 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%954 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x512x1x1xf32>
    %956 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%955, %938 : tensor<1x512x1x1xf32>, tensor<1x512x1x1xf32>) outs(%876 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x512x1x1xf32>
    %957 = tensor.empty() : tensor<1x1280x1x1xf32>
    %958 = linalg.fill ins(%cst_283 : f32) outs(%957 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %959 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%956, %cst_3 : tensor<1x512x1x1xf32>, tensor<1280x512x1x1xf32>) outs(%958 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %960 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%959, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x1280x1x1xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>) outs(%959 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %in_389: f32, %in_390: f32, %in_391: f32, %out: f32):
      %970 = arith.truncf %cst_284 : f64 to f32
      %971 = arith.addf %in_391, %970 : f32
      %972 = math.rsqrt %971 : f32
      %973 = arith.subf %in, %in_390 : f32
      %974 = arith.mulf %973, %972 : f32
      %975 = arith.mulf %974, %in_388 : f32
      %976 = arith.addf %975, %in_389 : f32
      linalg.yield %976 : f32
    } -> tensor<1x1280x1x1xf32>
    %961 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%960 : tensor<1x1280x1x1xf32>) outs(%957 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %970 = arith.negf %in : f32
      %971 = math.exp %970 : f32
      %972 = arith.addf %971, %cst_286 : f32
      %973 = arith.divf %cst_286, %972 : f32
      linalg.yield %973 : f32
    } -> tensor<1x1280x1x1xf32>
    %962 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%961, %960 : tensor<1x1280x1x1xf32>, tensor<1x1280x1x1xf32>) outs(%957 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.mulf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1280x1x1xf32>
    %963 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%962, %538 : tensor<1x1280x1x1xf32>, tensor<1x1xf32>) outs(%958 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %collapsed_387 = tensor.collapse_shape %963 [[0], [1, 2, 3]] : tensor<1x1280x1x1xf32> into tensor<1x1280xf32>
    %964 = tensor.empty() : tensor<1280x1000xf32>
    %965 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x1280xf32>) outs(%964 : tensor<1280x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1280x1000xf32>
    %966 = tensor.empty() : tensor<1x1000xf32>
    %967 = linalg.fill ins(%cst_283 : f32) outs(%966 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %968 = linalg.matmul ins(%collapsed_387, %965 : tensor<1x1280xf32>, tensor<1280x1000xf32>) outs(%967 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %969 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%968, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%966 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_388: f32, %out: f32):
      %970 = arith.addf %in, %in_388 : f32
      linalg.yield %970 : f32
    } -> tensor<1x1000xf32>
    return %969 : tensor<1x1000xf32>
  }
}
