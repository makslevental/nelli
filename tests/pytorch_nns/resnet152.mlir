#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1, d0)>
#map6 = affine_map<(d0, d1) -> (0, d1)>
#map7 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "ResNet"} {
    func.func @forward(%arg0: tensor<1x3x32x32xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<0.003275e+00> : tensor<1000x2048xf32>
    %cst_0 = arith.constant dense<0.002800e+00> : tensor<1000xf32>
    %cst_1 = arith.constant dense<-0.005525e+00> : tensor<2048x512x1x1xf32>
    %cst_2 = arith.constant dense<0.003115e+00> : tensor<512x512x3x3xf32>
    %cst_3 = arith.constant dense<-0.004472e+00> : tensor<512x2048x1x1xf32>
    %cst_4 = arith.constant dense<0.010413e+00> : tensor<2048x512x1x1xf32>
    %cst_5 = arith.constant dense<0.007297e+00> : tensor<512x512x3x3xf32>
    %cst_6 = arith.constant dense<-0.005577e+00> : tensor<512x2048x1x1xf32>
    %cst_7 = arith.constant dense<0.008391e+00> : tensor<2048x1024x1x1xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<2048xf32>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<2048xf32>
    %cst_10 = arith.constant dense<-0.005887e+00> : tensor<2048x512x1x1xf32>
    %cst_11 = arith.constant dense<0.000010e+00> : tensor<512x512x3x3xf32>
    %cst_12 = arith.constant dense<-0.023314e+00> : tensor<512x1024x1x1xf32>
    %cst_13 = arith.constant dense<-0.000876e+00> : tensor<1024x256x1x1xf32>
    %cst_14 = arith.constant dense<-0.001382e+00> : tensor<256x256x3x3xf32>
    %cst_15 = arith.constant dense<-0.001381e+00> : tensor<256x1024x1x1xf32>
    %cst_16 = arith.constant dense<0.006543e+00> : tensor<1024x256x1x1xf32>
    %cst_17 = arith.constant dense<-0.013237e+00> : tensor<256x256x3x3xf32>
    %cst_18 = arith.constant dense<0.006776e+00> : tensor<256x1024x1x1xf32>
    %cst_19 = arith.constant dense<0.000740e+00> : tensor<1024x256x1x1xf32>
    %cst_20 = arith.constant dense<-0.008446e+00> : tensor<256x256x3x3xf32>
    %cst_21 = arith.constant dense<0.001332e+00> : tensor<256x1024x1x1xf32>
    %cst_22 = arith.constant dense<0.001400e+00> : tensor<1024x256x1x1xf32>
    %cst_23 = arith.constant dense<0.000880e+00> : tensor<256x256x3x3xf32>
    %cst_24 = arith.constant dense<-0.009682e+00> : tensor<256x1024x1x1xf32>
    %cst_25 = arith.constant dense<-0.013658e+00> : tensor<1024x256x1x1xf32>
    %cst_26 = arith.constant dense<-0.001585e+00> : tensor<256x256x3x3xf32>
    %cst_27 = arith.constant dense<-0.011177e+00> : tensor<256x1024x1x1xf32>
    %cst_28 = arith.constant dense<0.004371e+00> : tensor<1024x256x1x1xf32>
    %cst_29 = arith.constant dense<0.011023e+00> : tensor<256x256x3x3xf32>
    %cst_30 = arith.constant dense<0.000065e+00> : tensor<256x1024x1x1xf32>
    %cst_31 = arith.constant dense<-0.000858e+00> : tensor<1024x256x1x1xf32>
    %cst_32 = arith.constant dense<0.012104e+00> : tensor<256x256x3x3xf32>
    %cst_33 = arith.constant dense<-0.006586e+00> : tensor<256x1024x1x1xf32>
    %cst_34 = arith.constant dense<-0.006606e+00> : tensor<1024x256x1x1xf32>
    %cst_35 = arith.constant dense<-0.012423e+00> : tensor<256x256x3x3xf32>
    %cst_36 = arith.constant dense<0.013054e+00> : tensor<256x1024x1x1xf32>
    %cst_37 = arith.constant dense<0.000573e+00> : tensor<1024x256x1x1xf32>
    %cst_38 = arith.constant dense<-0.011278e+00> : tensor<256x256x3x3xf32>
    %cst_39 = arith.constant dense<-0.002268e+00> : tensor<256x1024x1x1xf32>
    %cst_40 = arith.constant dense<-0.003366e+00> : tensor<1024x256x1x1xf32>
    %cst_41 = arith.constant dense<0.006757e+00> : tensor<256x256x3x3xf32>
    %cst_42 = arith.constant dense<0.003946e+00> : tensor<256x1024x1x1xf32>
    %cst_43 = arith.constant dense<0.003744e+00> : tensor<1024x256x1x1xf32>
    %cst_44 = arith.constant dense<0.016535e+00> : tensor<256x256x3x3xf32>
    %cst_45 = arith.constant dense<-0.008368e+00> : tensor<256x1024x1x1xf32>
    %cst_46 = arith.constant dense<0.004418e+00> : tensor<1024x256x1x1xf32>
    %cst_47 = arith.constant dense<0.009256e+00> : tensor<256x256x3x3xf32>
    %cst_48 = arith.constant dense<0.008047e+00> : tensor<256x1024x1x1xf32>
    %cst_49 = arith.constant dense<0.005667e+00> : tensor<1024x256x1x1xf32>
    %cst_50 = arith.constant dense<-0.005213e+00> : tensor<256x256x3x3xf32>
    %cst_51 = arith.constant dense<0.009079e+00> : tensor<256x1024x1x1xf32>
    %cst_52 = arith.constant dense<-0.007475e+00> : tensor<1024x256x1x1xf32>
    %cst_53 = arith.constant dense<-0.014814e+00> : tensor<256x256x3x3xf32>
    %cst_54 = arith.constant dense<-0.008830e+00> : tensor<256x1024x1x1xf32>
    %cst_55 = arith.constant dense<-0.002823e+00> : tensor<1024x256x1x1xf32>
    %cst_56 = arith.constant dense<0.007162e+00> : tensor<256x256x3x3xf32>
    %cst_57 = arith.constant dense<-0.002810e+00> : tensor<256x1024x1x1xf32>
    %cst_58 = arith.constant dense<0.000258e+00> : tensor<1024x256x1x1xf32>
    %cst_59 = arith.constant dense<0.001089e+00> : tensor<256x256x3x3xf32>
    %cst_60 = arith.constant dense<-0.002856e+00> : tensor<256x1024x1x1xf32>
    %cst_61 = arith.constant dense<0.009230e+00> : tensor<1024x256x1x1xf32>
    %cst_62 = arith.constant dense<-0.003230e+00> : tensor<256x256x3x3xf32>
    %cst_63 = arith.constant dense<-0.000855e+00> : tensor<256x1024x1x1xf32>
    %cst_64 = arith.constant dense<0.006168e+00> : tensor<1024x256x1x1xf32>
    %cst_65 = arith.constant dense<0.013820e+00> : tensor<256x256x3x3xf32>
    %cst_66 = arith.constant dense<-0.009396e+00> : tensor<256x1024x1x1xf32>
    %cst_67 = arith.constant dense<-0.008760e+00> : tensor<1024x256x1x1xf32>
    %cst_68 = arith.constant dense<-0.009907e+00> : tensor<256x256x3x3xf32>
    %cst_69 = arith.constant dense<-0.009016e+00> : tensor<256x1024x1x1xf32>
    %cst_70 = arith.constant dense<-0.008215e+00> : tensor<1024x256x1x1xf32>
    %cst_71 = arith.constant dense<0.007618e+00> : tensor<256x256x3x3xf32>
    %cst_72 = arith.constant dense<0.003556e+00> : tensor<256x1024x1x1xf32>
    %cst_73 = arith.constant dense<0.000332e+00> : tensor<1024x256x1x1xf32>
    %cst_74 = arith.constant dense<0.004600e+00> : tensor<256x256x3x3xf32>
    %cst_75 = arith.constant dense<0.001752e+00> : tensor<256x1024x1x1xf32>
    %cst_76 = arith.constant dense<0.016120e+00> : tensor<1024x256x1x1xf32>
    %cst_77 = arith.constant dense<0.003475e+00> : tensor<256x256x3x3xf32>
    %cst_78 = arith.constant dense<-0.012335e+00> : tensor<256x1024x1x1xf32>
    %cst_79 = arith.constant dense<0.002986e+00> : tensor<1024x256x1x1xf32>
    %cst_80 = arith.constant dense<0.005691e+00> : tensor<256x256x3x3xf32>
    %cst_81 = arith.constant dense<-0.016185e+00> : tensor<256x1024x1x1xf32>
    %cst_82 = arith.constant dense<-0.002450e+00> : tensor<1024x256x1x1xf32>
    %cst_83 = arith.constant dense<0.018212e+00> : tensor<256x256x3x3xf32>
    %cst_84 = arith.constant dense<0.005450e+00> : tensor<256x1024x1x1xf32>
    %cst_85 = arith.constant dense<-0.002167e+00> : tensor<1024x256x1x1xf32>
    %cst_86 = arith.constant dense<0.003906e+00> : tensor<256x256x3x3xf32>
    %cst_87 = arith.constant dense<-0.004789e+00> : tensor<256x1024x1x1xf32>
    %cst_88 = arith.constant dense<0.019705e+00> : tensor<1024x256x1x1xf32>
    %cst_89 = arith.constant dense<-0.001194e+00> : tensor<256x256x3x3xf32>
    %cst_90 = arith.constant dense<-0.002215e+00> : tensor<256x1024x1x1xf32>
    %cst_91 = arith.constant dense<-0.004845e+00> : tensor<1024x256x1x1xf32>
    %cst_92 = arith.constant dense<-0.003423e+00> : tensor<256x256x3x3xf32>
    %cst_93 = arith.constant dense<0.005658e+00> : tensor<256x1024x1x1xf32>
    %cst_94 = arith.constant dense<-0.013584e+00> : tensor<1024x256x1x1xf32>
    %cst_95 = arith.constant dense<0.012997e+00> : tensor<256x256x3x3xf32>
    %cst_96 = arith.constant dense<0.002310e+00> : tensor<256x1024x1x1xf32>
    %cst_97 = arith.constant dense<-0.000609e+00> : tensor<1024x256x1x1xf32>
    %cst_98 = arith.constant dense<0.000906e+00> : tensor<256x256x3x3xf32>
    %cst_99 = arith.constant dense<-0.015408e+00> : tensor<256x1024x1x1xf32>
    %cst_100 = arith.constant dense<-0.015603e+00> : tensor<1024x256x1x1xf32>
    %cst_101 = arith.constant dense<0.001409e+00> : tensor<256x256x3x3xf32>
    %cst_102 = arith.constant dense<0.002492e+00> : tensor<256x1024x1x1xf32>
    %cst_103 = arith.constant dense<-0.011608e+00> : tensor<1024x256x1x1xf32>
    %cst_104 = arith.constant dense<-0.008228e+00> : tensor<256x256x3x3xf32>
    %cst_105 = arith.constant dense<0.011658e+00> : tensor<256x1024x1x1xf32>
    %cst_106 = arith.constant dense<-0.009197e+00> : tensor<1024x256x1x1xf32>
    %cst_107 = arith.constant dense<0.007568e+00> : tensor<256x256x3x3xf32>
    %cst_108 = arith.constant dense<-0.006059e+00> : tensor<256x1024x1x1xf32>
    %cst_109 = arith.constant dense<-0.005195e+00> : tensor<1024x256x1x1xf32>
    %cst_110 = arith.constant dense<0.010867e+00> : tensor<256x256x3x3xf32>
    %cst_111 = arith.constant dense<-0.010566e+00> : tensor<256x1024x1x1xf32>
    %cst_112 = arith.constant dense<0.003893e+00> : tensor<1024x256x1x1xf32>
    %cst_113 = arith.constant dense<-0.005537e+00> : tensor<256x256x3x3xf32>
    %cst_114 = arith.constant dense<0.002953e+00> : tensor<256x1024x1x1xf32>
    %cst_115 = arith.constant dense<0.000682e+00> : tensor<1024x256x1x1xf32>
    %cst_116 = arith.constant dense<-0.004719e+00> : tensor<256x256x3x3xf32>
    %cst_117 = arith.constant dense<0.007614e+00> : tensor<256x1024x1x1xf32>
    %cst_118 = arith.constant dense<-0.011431e+00> : tensor<1024x512x1x1xf32>
    %cst_119 = arith.constant dense<0.000000e+00> : tensor<1024xf32>
    %cst_120 = arith.constant dense<1.000000e+00> : tensor<1024xf32>
    %cst_121 = arith.constant dense<0.004667e+00> : tensor<1024x256x1x1xf32>
    %cst_122 = arith.constant dense<0.003073e+00> : tensor<256x256x3x3xf32>
    %cst_123 = arith.constant dense<-0.014928e+00> : tensor<256x512x1x1xf32>
    %cst_124 = arith.constant dense<0.009304e+00> : tensor<512x128x1x1xf32>
    %cst_125 = arith.constant dense<0.009912e+00> : tensor<128x128x3x3xf32>
    %cst_126 = arith.constant dense<0.021604e+00> : tensor<128x512x1x1xf32>
    %cst_127 = arith.constant dense<-0.001574e+00> : tensor<512x128x1x1xf32>
    %cst_128 = arith.constant dense<-0.007413e+00> : tensor<128x128x3x3xf32>
    %cst_129 = arith.constant dense<0.005063e+00> : tensor<128x512x1x1xf32>
    %cst_130 = arith.constant dense<-0.007013e+00> : tensor<512x128x1x1xf32>
    %cst_131 = arith.constant dense<-0.000096e+00> : tensor<128x128x3x3xf32>
    %cst_132 = arith.constant dense<0.002469e+00> : tensor<128x512x1x1xf32>
    %cst_133 = arith.constant dense<0.015398e+00> : tensor<512x128x1x1xf32>
    %cst_134 = arith.constant dense<0.016303e+00> : tensor<128x128x3x3xf32>
    %cst_135 = arith.constant dense<0.012269e+00> : tensor<128x512x1x1xf32>
    %cst_136 = arith.constant dense<-0.010804e+00> : tensor<512x128x1x1xf32>
    %cst_137 = arith.constant dense<0.006078e+00> : tensor<128x128x3x3xf32>
    %cst_138 = arith.constant dense<0.002350e+00> : tensor<128x512x1x1xf32>
    %cst_139 = arith.constant dense<-0.009624e+00> : tensor<512x128x1x1xf32>
    %cst_140 = arith.constant dense<0.015639e+00> : tensor<128x128x3x3xf32>
    %cst_141 = arith.constant dense<0.002088e+00> : tensor<128x512x1x1xf32>
    %cst_142 = arith.constant dense<-0.019750e+00> : tensor<512x128x1x1xf32>
    %cst_143 = arith.constant dense<-0.012785e+00> : tensor<128x128x3x3xf32>
    %cst_144 = arith.constant dense<-0.007831e+00> : tensor<128x512x1x1xf32>
    %cst_145 = arith.constant dense<-0.001971e+00> : tensor<512x256x1x1xf32>
    %cst_146 = arith.constant dense<0.000000e+00> : tensor<512xf32>
    %cst_147 = arith.constant dense<1.000000e+00> : tensor<512xf32>
    %cst_148 = arith.constant dense<-0.009313e+00> : tensor<512x128x1x1xf32>
    %cst_149 = arith.constant dense<0.021493e+00> : tensor<128x128x3x3xf32>
    %cst_150 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_151 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_152 = arith.constant dense<-0.010390e+00> : tensor<128x256x1x1xf32>
    %cst_153 = arith.constant dense<-0.001946e+00> : tensor<256x64x1x1xf32>
    %cst_154 = arith.constant dense<0.008746e+00> : tensor<64x64x3x3xf32>
    %cst_155 = arith.constant dense<-0.000438e+00> : tensor<64x256x1x1xf32>
    %cst_156 = arith.constant dense<0.006476e+00> : tensor<256x64x1x1xf32>
    %cst_157 = arith.constant dense<0.006742e+00> : tensor<64x64x3x3xf32>
    %cst_158 = arith.constant dense<-0.005145e+00> : tensor<64x256x1x1xf32>
    %cst_159 = arith.constant dense<-0.007752e+00> : tensor<256x64x1x1xf32>
    %cst_160 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_161 = arith.constant dense<1.000000e+00> : tensor<256xf32>
    %cst_162 = arith.constant dense<0.000868e+00> : tensor<256x64x1x1xf32>
    %cst_163 = arith.constant dense<-0.020337e+00> : tensor<64x64x3x3xf32>
    %cst_164 = arith.constant dense<-0.007911e+00> : tensor<64x64x1x1xf32>
    %cst_165 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_166 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_167 = arith.constant dense<-0.008695e+00> : tensor<64x3x7x7xf32>
    %cst_168 = arith.constant 0.000000e+00 : f32
    %cst_169 = arith.constant -3.40282347E+38 : f32
    %cst_170 = arith.constant 1.000000e-05 : f64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x3x32x32xf32> to tensor<1x3x38x38xf32>
    %0 = tensor.empty() : tensor<1x64x16x16xf32>
    %1 = linalg.fill ins(%cst_168 : f32) outs(%0 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_167 : tensor<1x3x38x38xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x16x16xf32>) -> tensor<1x64x16x16xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_166, %cst_165, %cst_165, %cst_166 : tensor<1x64x16x16xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x64x16x16xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x16x16xf32>) outs(%0 : tensor<1x64x16x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x64x16x16xf32>
    %padded_171 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_169 : f32
    } : tensor<1x64x16x16xf32> to tensor<1x64x18x18xf32>
    %6 = tensor.empty() : tensor<1x64x8x8xf32>
    %7 = linalg.fill ins(%cst_169 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_171, %8 : tensor<1x64x18x18xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %10 = linalg.fill ins(%cst_168 : f32) outs(%6 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_164 : tensor<1x64x8x8xf32>, tensor<64x64x1x1xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_166, %cst_165, %cst_165, %cst_166 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%11 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x64x8x8xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_172 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_172, %cst_163 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_166, %cst_165, %cst_165, %cst_166 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%14 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x64x8x8xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x64x8x8xf32>
    %17 = tensor.empty() : tensor<1x256x8x8xf32>
    %18 = linalg.fill ins(%cst_168 : f32) outs(%17 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%16, %cst_162 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %20 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%19 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x8x8xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_159 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %22 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%21 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x8x8xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %22 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x256x8x8xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x8x8xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_158 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %26 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_166, %cst_165, %cst_165, %cst_166 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%25 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x64x8x8xf32>
    %27 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_173 = tensor.pad %27 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %28 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_173, %cst_157 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %29 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %cst_166, %cst_165, %cst_165, %cst_166 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%28 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x64x8x8xf32>
    %30 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x64x8x8xf32>
    %31 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%30, %cst_156 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %32 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%31 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x8x8xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %24 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x256x8x8xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33 : tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x8x8xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%34, %cst_155 : tensor<1x256x8x8xf32>, tensor<64x256x1x1xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %36 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_166, %cst_165, %cst_165, %cst_166 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%35 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x64x8x8xf32>
    %37 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x64x8x8xf32>
    %padded_174 = tensor.pad %37 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x64x8x8xf32> to tensor<1x64x10x10xf32>
    %38 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_174, %cst_154 : tensor<1x64x10x10xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x8x8xf32>) -> tensor<1x64x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %39 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %cst_166, %cst_165, %cst_165, %cst_166 : tensor<1x64x8x8xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%38 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x64x8x8xf32>
    %40 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x8x8xf32>) outs(%6 : tensor<1x64x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x64x8x8xf32>
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%40, %cst_153 : tensor<1x64x8x8xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x8x8xf32>) -> tensor<1x256x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %42 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x8x8xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%41 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x8x8xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %34 : tensor<1x256x8x8xf32>, tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x256x8x8xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x256x8x8xf32>) outs(%17 : tensor<1x256x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x8x8xf32>
    %45 = tensor.empty() : tensor<1x128x8x8xf32>
    %46 = linalg.fill ins(%cst_168 : f32) outs(%45 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%44, %cst_152 : tensor<1x256x8x8xf32>, tensor<128x256x1x1xf32>) outs(%46 : tensor<1x128x8x8xf32>) -> tensor<1x128x8x8xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x8x8xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%47 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x8x8xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x128x8x8xf32>) outs(%45 : tensor<1x128x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x8x8xf32>
    %padded_175 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x128x8x8xf32> to tensor<1x128x10x10xf32>
    %50 = tensor.empty() : tensor<1x128x4x4xf32>
    %51 = linalg.fill ins(%cst_168 : f32) outs(%50 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_175, %cst_149 : tensor<1x128x10x10xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %53 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%52 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %55 = tensor.empty() : tensor<1x512x4x4xf32>
    %56 = linalg.fill ins(%cst_168 : f32) outs(%55 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_148 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%57 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x4x4xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%44, %cst_145 : tensor<1x256x8x8xf32>, tensor<512x256x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %60 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%59 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x4x4xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %60 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x512x4x4xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x4x4xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%62, %cst_144 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%63 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_176 = tensor.pad %65 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_176, %cst_143 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%66 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%68, %cst_142 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %70 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%69 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x4x4xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %62 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x512x4x4xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x4x4xf32>
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_141 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %74 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%73 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_177 = tensor.pad %75 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_177, %cst_140 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %77 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%76 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%78, %cst_139 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %80 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%79 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x4x4xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %72 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x512x4x4xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x4x4xf32>
    %83 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%82, %cst_138 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%83 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_178 = tensor.pad %85 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %86 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_178, %cst_137 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %87 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%86 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %89 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%88, %cst_136 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%89 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x4x4xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %82 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x512x4x4xf32>
    %92 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x4x4xf32>
    %93 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %cst_135 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %94 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%93 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %95 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_179 = tensor.pad %95 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %96 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_179, %cst_134 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %97 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%96 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %98 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %99 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%98, %cst_133 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %100 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%99 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x4x4xf32>
    %101 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %92 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x512x4x4xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x4x4xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_132 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %104 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%103 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_180 = tensor.pad %105 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %106 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_180, %cst_131 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%106 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %109 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%108, %cst_130 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %110 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%109 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x4x4xf32>
    %111 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %102 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x512x4x4xf32>
    %112 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x4x4xf32>
    %113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%112, %cst_129 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%113 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_181 = tensor.pad %115 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_181, %cst_128 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %117 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%116 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %119 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%118, %cst_127 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %120 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%119 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x4x4xf32>
    %121 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %112 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x512x4x4xf32>
    %122 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x4x4xf32>
    %123 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%122, %cst_126 : tensor<1x512x4x4xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %124 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%123 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %padded_182 = tensor.pad %125 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x128x4x4xf32> to tensor<1x128x6x6xf32>
    %126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_182, %cst_125 : tensor<1x128x6x6xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x4x4xf32>) -> tensor<1x128x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %127 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %cst_151, %cst_150, %cst_150, %cst_151 : tensor<1x128x4x4xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%126 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x128x4x4xf32>
    %128 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x128x4x4xf32>) outs(%50 : tensor<1x128x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x128x4x4xf32>
    %129 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%128, %cst_124 : tensor<1x128x4x4xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x4x4xf32>) -> tensor<1x512x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %130 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x4x4xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%129 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x4x4xf32>
    %131 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %122 : tensor<1x512x4x4xf32>, tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x512x4x4xf32>
    %132 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x512x4x4xf32>) outs(%55 : tensor<1x512x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x4x4xf32>
    %133 = tensor.empty() : tensor<1x256x4x4xf32>
    %134 = linalg.fill ins(%cst_168 : f32) outs(%133 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    %135 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%132, %cst_123 : tensor<1x512x4x4xf32>, tensor<256x512x1x1xf32>) outs(%134 : tensor<1x256x4x4xf32>) -> tensor<1x256x4x4xf32>
    cf.assert %3, "training is not supported for now"
    %136 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x4x4xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%135 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x4x4xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136 : tensor<1x256x4x4xf32>) outs(%133 : tensor<1x256x4x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x4x4xf32>
    %padded_183 = tensor.pad %137 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x4x4xf32> to tensor<1x256x6x6xf32>
    %138 = tensor.empty() : tensor<1x256x2x2xf32>
    %139 = linalg.fill ins(%cst_168 : f32) outs(%138 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    %140 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_183, %cst_122 : tensor<1x256x6x6xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %141 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%140 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %142 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %143 = tensor.empty() : tensor<1x1024x2x2xf32>
    %144 = linalg.fill ins(%cst_168 : f32) outs(%143 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    %145 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%142, %cst_121 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %146 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%145 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%132, %cst_118 : tensor<1x512x4x4xf32>, tensor<1024x512x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %148 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%147 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %148 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %151 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%150, %cst_117 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%151 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_184 = tensor.pad %153 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_184, %cst_116 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %155 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%154 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %156 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %157 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%156, %cst_115 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %158 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%157 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %150 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%160, %cst_114 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %162 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%161 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_185 = tensor.pad %163 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %164 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_185, %cst_113 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %165 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%164 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %166 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %167 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%166, %cst_112 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %168 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%167 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %169 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %160 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %171 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%170, %cst_111 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %172 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%171 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_186 = tensor.pad %173 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %174 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_186, %cst_110 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%174 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %177 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%176, %cst_109 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %178 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%177 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %170 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %180 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %181 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %cst_108 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %182 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%181 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_187 = tensor.pad %183 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_187, %cst_107 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%184 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%186, %cst_106 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %188 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%187 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %189 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %180 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %cst_105 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%191 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_188 = tensor.pad %193 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_188, %cst_104 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%194 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %197 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%196, %cst_103 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %198 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%197 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %199 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %190 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %201 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%200, %cst_102 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %202 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%201 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_189 = tensor.pad %203 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %204 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_189, %cst_101 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %205 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%204 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %207 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%206, %cst_100 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %208 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%207 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %209 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %200 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %210 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %211 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%210, %cst_99 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %212 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%211 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %213 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_190 = tensor.pad %213 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %214 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_190, %cst_98 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %215 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%214 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %216 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %217 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%216, %cst_97 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %218 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%217 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %219 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %210 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %220 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%220, %cst_96 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %222 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%221 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %223 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_191 = tensor.pad %223 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %224 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_191, %cst_95 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %225 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%224 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %227 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%226, %cst_94 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %228 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%227 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %229 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %220 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%230, %cst_93 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %232 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%231 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %233 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_192 = tensor.pad %233 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %234 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_192, %cst_92 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %235 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%234 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %236 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %237 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%236, %cst_91 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %238 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%237 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %230 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %241 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%240, %cst_90 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %242 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%241 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_193 = tensor.pad %243 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %244 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_193, %cst_89 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%244 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %247 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%246, %cst_88 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %248 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%247 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %240 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %250 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %251 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%250, %cst_87 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %252 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%251 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %253 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_194 = tensor.pad %253 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %254 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_194, %cst_86 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %255 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%254 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%256, %cst_85 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %258 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%257 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %259 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %250 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %cst_84 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %262 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%261 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_195 = tensor.pad %263 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_195, %cst_83 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %265 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%264 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %266 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%266, %cst_82 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %268 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%267 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %269 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %260 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %270 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%270, %cst_81 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %272 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%271 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %273 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_196 = tensor.pad %273 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %274 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_196, %cst_80 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%274 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %277 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%276, %cst_79 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %278 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%277 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %279 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %270 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %281 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%280, %cst_78 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%281 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_197 = tensor.pad %283 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_197, %cst_77 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %285 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%284 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %286 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %287 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %cst_76 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %288 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%287 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %289 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %280 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %290 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %291 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%290, %cst_75 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %292 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%291 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %293 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_198 = tensor.pad %293 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_198, %cst_74 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %295 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%294 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %296 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %297 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%296, %cst_73 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %298 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%297 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %299 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %290 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %300 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %301 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%300, %cst_72 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %302 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%301 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_199 = tensor.pad %303 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %304 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_199, %cst_71 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %305 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%304 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %306 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %307 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%306, %cst_70 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %308 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%307 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %300 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %310 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %311 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%310, %cst_69 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %312 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%311 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %313 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_200 = tensor.pad %313 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %314 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_200, %cst_68 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %315 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%314 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %316 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %317 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%316, %cst_67 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %318 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%317 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %310 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %320 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %321 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%320, %cst_66 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %322 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%321 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_201 = tensor.pad %323 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %324 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_201, %cst_65 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %325 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%324 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %327 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%326, %cst_64 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %328 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%327 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %329 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %320 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %330 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %331 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %cst_63 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %332 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%331 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %333 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_202 = tensor.pad %333 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %334 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_202, %cst_62 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %335 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%334 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %336 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %337 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%336, %cst_61 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %338 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%337 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %330 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %340 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %341 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%340, %cst_60 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %342 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%341 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_203 = tensor.pad %343 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %344 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_203, %cst_59 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %345 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%344 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %346 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %347 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%346, %cst_58 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %348 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%347 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %349 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %340 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %350 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %351 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%350, %cst_57 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %352 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%351 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %353 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_204 = tensor.pad %353 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %354 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_204, %cst_56 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %355 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%354 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %356 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %357 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%356, %cst_55 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %358 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%357 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %359 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %350 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %360 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %361 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%360, %cst_54 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %362 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%361 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %363 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_205 = tensor.pad %363 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %364 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_205, %cst_53 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %365 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%364 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %366 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %367 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%366, %cst_52 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %368 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%367 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %369 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368, %360 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %370 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %371 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%370, %cst_51 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %372 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%371 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %373 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_206 = tensor.pad %373 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %374 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_206, %cst_50 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %375 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%374 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %376 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %377 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%376, %cst_49 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %378 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%377 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %379 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %370 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %380 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %381 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%380, %cst_48 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %382 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%381 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %383 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_207 = tensor.pad %383 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %384 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_207, %cst_47 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %385 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%384 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %386 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %387 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%386, %cst_46 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %388 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%387 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %389 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %380 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %390 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %391 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%390, %cst_45 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %392 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%391 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %393 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_208 = tensor.pad %393 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %394 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_208, %cst_44 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %395 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%394 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %396 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %397 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%396, %cst_43 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %398 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%397 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %399 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398, %390 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %400 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %401 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%400, %cst_42 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %402 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%401 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %403 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_209 = tensor.pad %403 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %404 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_209, %cst_41 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %405 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%404 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %406 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %407 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%406, %cst_40 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %408 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%407 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %409 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %400 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %410 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %411 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%410, %cst_39 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %412 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%411 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %413 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_210 = tensor.pad %413 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %414 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_210, %cst_38 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %415 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%414 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %416 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %417 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%416, %cst_37 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %418 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%417 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %419 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %410 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %420 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %421 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%420, %cst_36 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %422 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%421 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %423 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_211 = tensor.pad %423 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %424 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_211, %cst_35 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %425 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%424 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %426 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %427 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%426, %cst_34 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %428 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%427 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %429 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428, %420 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %430 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %431 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%430, %cst_33 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %432 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%431 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %433 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_212 = tensor.pad %433 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %434 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_212, %cst_32 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %435 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%434 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %436 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %437 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%436, %cst_31 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %438 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%437, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%437 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %439 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438, %430 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %440 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %441 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%440, %cst_30 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %442 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%441 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %443 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_213 = tensor.pad %443 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %444 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_213, %cst_29 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %445 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%444 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %446 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %447 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%446, %cst_28 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %448 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%447 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %449 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %440 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %450 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %451 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%450, %cst_27 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %452 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%451 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %453 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_214 = tensor.pad %453 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %454 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_214, %cst_26 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %455 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%454 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %456 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %457 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%456, %cst_25 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %458 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%457 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %459 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %450 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %460 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %461 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%460, %cst_24 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %462 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%461 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %463 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_215 = tensor.pad %463 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %464 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_215, %cst_23 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %465 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%464 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %466 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %467 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%466, %cst_22 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %468 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%467 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %469 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %460 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %470 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %471 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%470, %cst_21 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %472 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%471 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %473 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_216 = tensor.pad %473 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %474 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_216, %cst_20 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %475 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%474 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %476 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %477 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%476, %cst_19 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %478 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%477 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %479 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478, %470 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %480 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %481 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%480, %cst_18 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %482 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%481 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %483 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_217 = tensor.pad %483 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %484 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_217, %cst_17 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %485 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%484 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %486 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%485 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %487 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%486, %cst_16 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %488 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%487 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %489 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488, %480 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %490 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %491 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%490, %cst_15 : tensor<1x1024x2x2xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %492 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%491 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %493 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %padded_218 = tensor.pad %493 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x256x2x2xf32> to tensor<1x256x4x4xf32>
    %494 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_218, %cst_14 : tensor<1x256x4x4xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x2x2xf32>) -> tensor<1x256x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %495 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %cst_161, %cst_160, %cst_160, %cst_161 : tensor<1x256x2x2xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%494 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x256x2x2xf32>
    %496 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495 : tensor<1x256x2x2xf32>) outs(%138 : tensor<1x256x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x256x2x2xf32>
    %497 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%496, %cst_13 : tensor<1x256x2x2xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x2x2xf32>) -> tensor<1x1024x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %498 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497, %cst_120, %cst_119, %cst_119, %cst_120 : tensor<1x1024x2x2xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%497 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x1024x2x2xf32>
    %499 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %490 : tensor<1x1024x2x2xf32>, tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1024x2x2xf32>
    %500 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499 : tensor<1x1024x2x2xf32>) outs(%143 : tensor<1x1024x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x1024x2x2xf32>
    %501 = tensor.empty() : tensor<1x512x2x2xf32>
    %502 = linalg.fill ins(%cst_168 : f32) outs(%501 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    %503 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%500, %cst_12 : tensor<1x1024x2x2xf32>, tensor<512x1024x1x1xf32>) outs(%502 : tensor<1x512x2x2xf32>) -> tensor<1x512x2x2xf32>
    cf.assert %3, "training is not supported for now"
    %504 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x2x2xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%503 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x2x2xf32>
    %505 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504 : tensor<1x512x2x2xf32>) outs(%501 : tensor<1x512x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x2x2xf32>
    %padded_219 = tensor.pad %505 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x512x2x2xf32> to tensor<1x512x4x4xf32>
    %506 = tensor.empty() : tensor<1x512x1x1xf32>
    %507 = linalg.fill ins(%cst_168 : f32) outs(%506 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %508 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_219, %cst_11 : tensor<1x512x4x4xf32>, tensor<512x512x3x3xf32>) outs(%507 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %509 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%508 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x1x1xf32>
    %510 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509 : tensor<1x512x1x1xf32>) outs(%506 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x1x1xf32>
    %511 = tensor.empty() : tensor<1x2048x1x1xf32>
    %512 = linalg.fill ins(%cst_168 : f32) outs(%511 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %513 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%510, %cst_10 : tensor<1x512x1x1xf32>, tensor<2048x512x1x1xf32>) outs(%512 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %514 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%513 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x2048x1x1xf32>
    %515 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%500, %cst_7 : tensor<1x1024x2x2xf32>, tensor<2048x1024x1x1xf32>) outs(%512 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %516 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%515 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x2048x1x1xf32>
    %517 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514, %516 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%511 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x2048x1x1xf32>
    %518 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517 : tensor<1x2048x1x1xf32>) outs(%511 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x2048x1x1xf32>
    %519 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%518, %cst_6 : tensor<1x2048x1x1xf32>, tensor<512x2048x1x1xf32>) outs(%507 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %520 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%519 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x1x1xf32>
    %521 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520 : tensor<1x512x1x1xf32>) outs(%506 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_220 = tensor.pad %521 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %522 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_220, %cst_5 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%507 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %523 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%522 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x1x1xf32>
    %524 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523 : tensor<1x512x1x1xf32>) outs(%506 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x1x1xf32>
    %525 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%524, %cst_4 : tensor<1x512x1x1xf32>, tensor<2048x512x1x1xf32>) outs(%512 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %526 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%525 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x2048x1x1xf32>
    %527 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526, %518 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%511 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x2048x1x1xf32>
    %528 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527 : tensor<1x2048x1x1xf32>) outs(%511 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x2048x1x1xf32>
    %529 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%528, %cst_3 : tensor<1x2048x1x1xf32>, tensor<512x2048x1x1xf32>) outs(%507 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %530 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%529 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x1x1xf32>
    %531 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530 : tensor<1x512x1x1xf32>) outs(%506 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x1x1xf32>
    %padded_221 = tensor.pad %531 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_168 : f32
    } : tensor<1x512x1x1xf32> to tensor<1x512x3x3xf32>
    %532 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_221, %cst_2 : tensor<1x512x3x3xf32>, tensor<512x512x3x3xf32>) outs(%507 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %533 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %cst_147, %cst_146, %cst_146, %cst_147 : tensor<1x512x1x1xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%532 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x512x1x1xf32>
    %534 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533 : tensor<1x512x1x1xf32>) outs(%506 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x512x1x1xf32>
    %535 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%534, %cst_1 : tensor<1x512x1x1xf32>, tensor<2048x512x1x1xf32>) outs(%512 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    cf.assert %3, "training is not supported for now"
    %536 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535, %cst_9, %cst_8, %cst_8, %cst_9 : tensor<1x2048x1x1xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%535 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %in_223: f32, %in_224: f32, %in_225: f32, %out: f32):
      %547 = arith.truncf %cst_170 : f64 to f32
      %548 = arith.addf %in_225, %547 : f32
      %549 = math.rsqrt %548 : f32
      %550 = arith.subf %in, %in_224 : f32
      %551 = arith.mulf %550, %549 : f32
      %552 = arith.mulf %551, %in_222 : f32
      %553 = arith.addf %552, %in_223 : f32
      linalg.yield %553 : f32
    } -> tensor<1x2048x1x1xf32>
    %537 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %528 : tensor<1x2048x1x1xf32>, tensor<1x2048x1x1xf32>) outs(%511 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x2048x1x1xf32>
    %538 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537 : tensor<1x2048x1x1xf32>) outs(%511 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %547 = arith.cmpf ugt, %in, %cst_168 : f32
      %548 = arith.select %547, %in, %cst_168 : f32
      linalg.yield %548 : f32
    } -> tensor<1x2048x1x1xf32>
    %539 = tensor.empty() : tensor<1x1xf32>
    %540 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%538, %539 : tensor<1x2048x1x1xf32>, tensor<1x1xf32>) outs(%512 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %collapsed = tensor.collapse_shape %540 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %541 = tensor.empty() : tensor<2048x1000xf32>
    %542 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000x2048xf32>) outs(%541 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %543 = tensor.empty() : tensor<1x1000xf32>
    %544 = linalg.fill ins(%cst_168 : f32) outs(%543 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %545 = linalg.matmul ins(%collapsed, %542 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%544 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %546 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%545, %cst_0 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%543 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_222: f32, %out: f32):
      %547 = arith.addf %in, %in_222 : f32
      linalg.yield %547 : f32
    } -> tensor<1x1000xf32>
    return %546 : tensor<1x1000xf32>
  }
}
