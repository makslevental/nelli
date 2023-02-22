#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1, d0)>
#map5 = affine_map<(d0, d1) -> (0, d1)>
#map6 = affine_map<(d0, d1) -> (d1)>
module attributes {pi.module_name = "MyInception"} {
  func.func @forward(%arg0: tensor<1x3x64x64xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense<1.000000e+00> : tensor<448xf32>
    %cst_0 = arith.constant dense<0.000000e+00> : tensor<448xf32>
    %cst_1 = arith.constant dense<1.000000e+00> : tensor<320xf32>
    %cst_2 = arith.constant dense<0.000000e+00> : tensor<320xf32>
    %cst_3 = arith.constant dense<1.000000e+00> : tensor<160xf32>
    %cst_4 = arith.constant dense<0.000000e+00> : tensor<160xf32>
    %cst_5 = arith.constant dense<1.000000e+00> : tensor<128xf32>
    %cst_6 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_7 = arith.constant dense<1.000000e+00> : tensor<384xf32>
    %cst_8 = arith.constant dense<0.000000e+00> : tensor<384xf32>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<96xf32>
    %cst_10 = arith.constant dense<0.000000e+00> : tensor<96xf32>
    %cst_11 = arith.constant dense<1.000000e+00> : tensor<48xf32>
    %cst_12 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_13 = arith.constant dense<1.000000e+00> : tensor<192xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_15 = arith.constant dense<1.000000e+00> : tensor<80xf32>
    %cst_16 = arith.constant dense<0.000000e+00> : tensor<80xf32>
    %cst_17 = arith.constant dense<1.000000e+00> : tensor<64xf32>
    %cst_18 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_19 = arith.constant dense<1.000000e+00> : tensor<32xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_21 = arith.constant -3.40282347E+38 : f32
    %cst_22 = arith.constant 1.000000e-03 : f64
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %cst_23 = arith.constant 9.000000e+00 : f32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst_24 = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<32x3x3x3xf32>
    %1 = tensor.empty() : tensor<32xf32>
    %2 = tensor.empty() : tensor<32x32x3x3xf32>
    %3 = tensor.empty() : tensor<64x32x3x3xf32>
    %4 = tensor.empty() : tensor<64xf32>
    %5 = tensor.empty() : tensor<80x64x1x1xf32>
    %6 = tensor.empty() : tensor<80xf32>
    %7 = tensor.empty() : tensor<192x80x3x3xf32>
    %8 = tensor.empty() : tensor<192xf32>
    %9 = tensor.empty() : tensor<64x192x1x1xf32>
    %10 = tensor.empty() : tensor<48x192x1x1xf32>
    %11 = tensor.empty() : tensor<48xf32>
    %12 = tensor.empty() : tensor<64x48x5x5xf32>
    %13 = tensor.empty() : tensor<96x64x3x3xf32>
    %14 = tensor.empty() : tensor<96xf32>
    %15 = tensor.empty() : tensor<96x96x3x3xf32>
    %16 = tensor.empty() : tensor<32x192x1x1xf32>
    %17 = tensor.empty() : tensor<64x256x1x1xf32>
    %18 = tensor.empty() : tensor<48x256x1x1xf32>
    %19 = tensor.empty() : tensor<64x288x1x1xf32>
    %20 = tensor.empty() : tensor<48x288x1x1xf32>
    %21 = tensor.empty() : tensor<384x288x3x3xf32>
    %22 = tensor.empty() : tensor<384xf32>
    %23 = tensor.empty() : tensor<192x768x1x1xf32>
    %24 = tensor.empty() : tensor<128x768x1x1xf32>
    %25 = tensor.empty() : tensor<128xf32>
    %26 = tensor.empty() : tensor<128x128x1x7xf32>
    %27 = tensor.empty() : tensor<192x128x7x1xf32>
    %28 = tensor.empty() : tensor<128x128x7x1xf32>
    %29 = tensor.empty() : tensor<192x128x1x7xf32>
    %30 = tensor.empty() : tensor<160x768x1x1xf32>
    %31 = tensor.empty() : tensor<160xf32>
    %32 = tensor.empty() : tensor<160x160x1x7xf32>
    %33 = tensor.empty() : tensor<192x160x7x1xf32>
    %34 = tensor.empty() : tensor<160x160x7x1xf32>
    %35 = tensor.empty() : tensor<192x160x1x7xf32>
    %36 = tensor.empty() : tensor<192x192x1x7xf32>
    %37 = tensor.empty() : tensor<192x192x7x1xf32>
    %38 = tensor.empty() : tensor<320x192x3x3xf32>
    %39 = tensor.empty() : tensor<320xf32>
    %40 = tensor.empty() : tensor<192x192x3x3xf32>
    %41 = tensor.empty() : tensor<320x1280x1x1xf32>
    %42 = tensor.empty() : tensor<384x1280x1x1xf32>
    %43 = tensor.empty() : tensor<384x384x1x3xf32>
    %44 = tensor.empty() : tensor<384x384x3x1xf32>
    %45 = tensor.empty() : tensor<448x1280x1x1xf32>
    %46 = tensor.empty() : tensor<448xf32>
    %47 = tensor.empty() : tensor<384x448x3x3xf32>
    %48 = tensor.empty() : tensor<192x1280x1x1xf32>
    %49 = tensor.empty() : tensor<320x2048x1x1xf32>
    %50 = tensor.empty() : tensor<384x2048x1x1xf32>
    %51 = tensor.empty() : tensor<448x2048x1x1xf32>
    %52 = tensor.empty() : tensor<192x2048x1x1xf32>
    %53 = tensor.empty() : tensor<1000xf32>
    %54 = tensor.empty() : tensor<1000x2048xf32>
    %55 = tensor.empty() : tensor<1x32x31x31xf32>
    %56 = linalg.fill ins(%cst_24 : f32) outs(%55 : tensor<1x32x31x31xf32>) -> tensor<1x32x31x31xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%arg0, %0 : tensor<1x3x64x64xf32>, tensor<32x3x3x3xf32>) outs(%56 : tensor<1x32x31x31xf32>) -> tensor<1x32x31x31xf32>
    %58 = arith.cmpi eq, %false, %false : i1
    cf.assert %58, "training is not supported for now"
    %59 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %1, %cst_20, %cst_20, %cst_19 : tensor<1x32x31x31xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%57 : tensor<1x32x31x31xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x32x31x31xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x32x31x31xf32>) outs(%55 : tensor<1x32x31x31xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x32x31x31xf32>
    %61 = tensor.empty() : tensor<1x32x29x29xf32>
    %62 = linalg.fill ins(%cst_24 : f32) outs(%61 : tensor<1x32x29x29xf32>) -> tensor<1x32x29x29xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%60, %2 : tensor<1x32x31x31xf32>, tensor<32x32x3x3xf32>) outs(%62 : tensor<1x32x29x29xf32>) -> tensor<1x32x29x29xf32>
    cf.assert %58, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %1, %cst_20, %cst_20, %cst_19 : tensor<1x32x29x29xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%63 : tensor<1x32x29x29xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x32x29x29xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x32x29x29xf32>) outs(%61 : tensor<1x32x29x29xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x32x29x29xf32>
    %padded = tensor.pad %65 low[%c0, %c0, %c1, %c1] high[%c0, %c0, %c1, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x32x29x29xf32> to tensor<?x?x?x?xf32>
    %66 = tensor.empty() : tensor<1x64x29x29xf32>
    %67 = linalg.fill ins(%cst_24 : f32) outs(%66 : tensor<1x64x29x29xf32>) -> tensor<1x64x29x29xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %3 : tensor<?x?x?x?xf32>, tensor<64x32x3x3xf32>) outs(%67 : tensor<1x64x29x29xf32>) -> tensor<1x64x29x29xf32>
    cf.assert %58, "training is not supported for now"
    %69 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %4, %cst_18, %cst_18, %cst_17 : tensor<1x64x29x29xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%68 : tensor<1x64x29x29xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x64x29x29xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x64x29x29xf32>) outs(%66 : tensor<1x64x29x29xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x64x29x29xf32>
    %71 = tensor.empty() : tensor<1x64x14x14xf32>
    %72 = linalg.fill ins(%cst_21 : f32) outs(%71 : tensor<1x64x14x14xf32>) -> tensor<1x64x14x14xf32>
    %73 = tensor.empty() : tensor<3x3xf32>
    %74 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%70, %73 : tensor<1x64x29x29xf32>, tensor<3x3xf32>) outs(%72 : tensor<1x64x14x14xf32>) -> tensor<1x64x14x14xf32>
    %75 = tensor.empty() : tensor<1x80x14x14xf32>
    %76 = linalg.fill ins(%cst_24 : f32) outs(%75 : tensor<1x80x14x14xf32>) -> tensor<1x80x14x14xf32>
    %77 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%74, %5 : tensor<1x64x14x14xf32>, tensor<80x64x1x1xf32>) outs(%76 : tensor<1x80x14x14xf32>) -> tensor<1x80x14x14xf32>
    cf.assert %58, "training is not supported for now"
    %78 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %6, %cst_16, %cst_16, %cst_15 : tensor<1x80x14x14xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%77 : tensor<1x80x14x14xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x80x14x14xf32>
    %79 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78 : tensor<1x80x14x14xf32>) outs(%75 : tensor<1x80x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x80x14x14xf32>
    %80 = tensor.empty() : tensor<1x192x12x12xf32>
    %81 = linalg.fill ins(%cst_24 : f32) outs(%80 : tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    %82 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%79, %7 : tensor<1x80x14x14xf32>, tensor<192x80x3x3xf32>) outs(%81 : tensor<1x192x12x12xf32>) -> tensor<1x192x12x12xf32>
    cf.assert %58, "training is not supported for now"
    %83 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x12x12xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%82 : tensor<1x192x12x12xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x12x12xf32>
    %84 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<1x192x12x12xf32>) outs(%80 : tensor<1x192x12x12xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x12x12xf32>
    %85 = tensor.empty() : tensor<1x192x5x5xf32>
    %86 = linalg.fill ins(%cst_21 : f32) outs(%85 : tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %87 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%84, %73 : tensor<1x192x12x12xf32>, tensor<3x3xf32>) outs(%86 : tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %88 = tensor.empty() : tensor<1x64x5x5xf32>
    %89 = linalg.fill ins(%cst_24 : f32) outs(%88 : tensor<1x64x5x5xf32>) -> tensor<1x64x5x5xf32>
    %90 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%87, %9 : tensor<1x192x5x5xf32>, tensor<64x192x1x1xf32>) outs(%89 : tensor<1x64x5x5xf32>) -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %91 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %4, %cst_18, %cst_18, %cst_17 : tensor<1x64x5x5xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%90 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x64x5x5xf32>
    %92 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x64x5x5xf32>) outs(%88 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x64x5x5xf32>
    %93 = tensor.empty() : tensor<1x48x5x5xf32>
    %94 = linalg.fill ins(%cst_24 : f32) outs(%93 : tensor<1x48x5x5xf32>) -> tensor<1x48x5x5xf32>
    %95 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%87, %10 : tensor<1x192x5x5xf32>, tensor<48x192x1x1xf32>) outs(%94 : tensor<1x48x5x5xf32>) -> tensor<1x48x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %96 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %11, %cst_12, %cst_12, %cst_11 : tensor<1x48x5x5xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%95 : tensor<1x48x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x48x5x5xf32>
    %97 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x48x5x5xf32>) outs(%93 : tensor<1x48x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x48x5x5xf32>
    %padded_25 = tensor.pad %97 low[%c0, %c0, %c2, %c2] high[%c0, %c0, %c2, %c2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x48x5x5xf32> to tensor<?x?x?x?xf32>
    %98 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_25, %12 : tensor<?x?x?x?xf32>, tensor<64x48x5x5xf32>) outs(%89 : tensor<1x64x5x5xf32>) -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %99 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %4, %cst_18, %cst_18, %cst_17 : tensor<1x64x5x5xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%98 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x64x5x5xf32>
    %100 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x64x5x5xf32>) outs(%88 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %padded_26 = tensor.pad %92 low[%c0, %c0, %c1, %c1] high[%c0, %c0, %c1, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x64x5x5xf32> to tensor<?x?x?x?xf32>
    %101 = tensor.empty() : tensor<1x96x5x5xf32>
    %102 = linalg.fill ins(%cst_24 : f32) outs(%101 : tensor<1x96x5x5xf32>) -> tensor<1x96x5x5xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_26, %13 : tensor<?x?x?x?xf32>, tensor<96x64x3x3xf32>) outs(%102 : tensor<1x96x5x5xf32>) -> tensor<1x96x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %104 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %14, %cst_10, %cst_10, %cst_9 : tensor<1x96x5x5xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%103 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x96x5x5xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x96x5x5xf32>) outs(%101 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x96x5x5xf32>
    %padded_27 = tensor.pad %105 low[%c0, %c0, %c1, %c1] high[%c0, %c0, %c1, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x96x5x5xf32> to tensor<?x?x?x?xf32>
    %106 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_27, %15 : tensor<?x?x?x?xf32>, tensor<96x96x3x3xf32>) outs(%102 : tensor<1x96x5x5xf32>) -> tensor<1x96x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %14, %cst_10, %cst_10, %cst_9 : tensor<1x96x5x5xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%106 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x96x5x5xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x96x5x5xf32>) outs(%101 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x96x5x5xf32>
    %padded_28 = tensor.pad %87 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x192x5x5xf32> to tensor<1x192x7x7xf32>
    %109 = linalg.fill ins(%cst_24 : f32) outs(%85 : tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %110 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_28, %73 : tensor<1x192x7x7xf32>, tensor<3x3xf32>) outs(%109 : tensor<1x192x5x5xf32>) -> tensor<1x192x5x5xf32>
    %111 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x192x5x5xf32>) outs(%85 : tensor<1x192x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.divf %in, %cst_23 : f32
      linalg.yield %400 : f32
    } -> tensor<1x192x5x5xf32>
    %112 = tensor.empty() : tensor<1x32x5x5xf32>
    %113 = linalg.fill ins(%cst_24 : f32) outs(%112 : tensor<1x32x5x5xf32>) -> tensor<1x32x5x5xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%111, %16 : tensor<1x192x5x5xf32>, tensor<32x192x1x1xf32>) outs(%113 : tensor<1x32x5x5xf32>) -> tensor<1x32x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %115 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %1, %cst_20, %cst_20, %cst_19 : tensor<1x32x5x5xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%114 : tensor<1x32x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x32x5x5xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x32x5x5xf32>) outs(%112 : tensor<1x32x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x32x5x5xf32>
    %117 = tensor.empty() : tensor<1x256x5x5xf32>
    %inserted_slice = tensor.insert_slice %92 into %117[0, 0, 0, 0] [1, 64, 5, 5] [1, 1, 1, 1] : tensor<1x64x5x5xf32> into tensor<1x256x5x5xf32>
    %inserted_slice_29 = tensor.insert_slice %100 into %inserted_slice[0, 64, 0, 0] [1, 64, 5, 5] [1, 1, 1, 1] : tensor<1x64x5x5xf32> into tensor<1x256x5x5xf32>
    %inserted_slice_30 = tensor.insert_slice %108 into %inserted_slice_29[0, 128, 0, 0] [1, 96, 5, 5] [1, 1, 1, 1] : tensor<1x96x5x5xf32> into tensor<1x256x5x5xf32>
    %inserted_slice_31 = tensor.insert_slice %116 into %inserted_slice_30[0, 224, 0, 0] [1, 32, 5, 5] [1, 1, 1, 1] : tensor<1x32x5x5xf32> into tensor<1x256x5x5xf32>
    %118 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_31, %17 : tensor<1x256x5x5xf32>, tensor<64x256x1x1xf32>) outs(%89 : tensor<1x64x5x5xf32>) -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %119 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %4, %cst_18, %cst_18, %cst_17 : tensor<1x64x5x5xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%118 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x64x5x5xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x64x5x5xf32>) outs(%88 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x64x5x5xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_31, %18 : tensor<1x256x5x5xf32>, tensor<48x256x1x1xf32>) outs(%94 : tensor<1x48x5x5xf32>) -> tensor<1x48x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %11, %cst_12, %cst_12, %cst_11 : tensor<1x48x5x5xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%121 : tensor<1x48x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x48x5x5xf32>
    %123 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x48x5x5xf32>) outs(%93 : tensor<1x48x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x48x5x5xf32>
    %padded_32 = tensor.pad %123 low[%c0, %c0, %c2, %c2] high[%c0, %c0, %c2, %c2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x48x5x5xf32> to tensor<?x?x?x?xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_32, %12 : tensor<?x?x?x?xf32>, tensor<64x48x5x5xf32>) outs(%89 : tensor<1x64x5x5xf32>) -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %125 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %4, %cst_18, %cst_18, %cst_17 : tensor<1x64x5x5xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%124 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x64x5x5xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125 : tensor<1x64x5x5xf32>) outs(%88 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %padded_33 = tensor.pad %120 low[%c0, %c0, %c1, %c1] high[%c0, %c0, %c1, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x64x5x5xf32> to tensor<?x?x?x?xf32>
    %127 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_33, %13 : tensor<?x?x?x?xf32>, tensor<96x64x3x3xf32>) outs(%102 : tensor<1x96x5x5xf32>) -> tensor<1x96x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %128 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %14, %cst_10, %cst_10, %cst_9 : tensor<1x96x5x5xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%127 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x96x5x5xf32>
    %129 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x96x5x5xf32>) outs(%101 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x96x5x5xf32>
    %padded_34 = tensor.pad %129 low[%c0, %c0, %c1, %c1] high[%c0, %c0, %c1, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x96x5x5xf32> to tensor<?x?x?x?xf32>
    %130 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_34, %15 : tensor<?x?x?x?xf32>, tensor<96x96x3x3xf32>) outs(%102 : tensor<1x96x5x5xf32>) -> tensor<1x96x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %131 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %14, %cst_10, %cst_10, %cst_9 : tensor<1x96x5x5xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%130 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x96x5x5xf32>
    %132 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x96x5x5xf32>) outs(%101 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x96x5x5xf32>
    %padded_35 = tensor.pad %inserted_slice_31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x256x5x5xf32> to tensor<1x256x7x7xf32>
    %133 = linalg.fill ins(%cst_24 : f32) outs(%117 : tensor<1x256x5x5xf32>) -> tensor<1x256x5x5xf32>
    %134 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_35, %73 : tensor<1x256x7x7xf32>, tensor<3x3xf32>) outs(%133 : tensor<1x256x5x5xf32>) -> tensor<1x256x5x5xf32>
    %135 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134 : tensor<1x256x5x5xf32>) outs(%117 : tensor<1x256x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.divf %in, %cst_23 : f32
      linalg.yield %400 : f32
    } -> tensor<1x256x5x5xf32>
    %136 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%135, %17 : tensor<1x256x5x5xf32>, tensor<64x256x1x1xf32>) outs(%89 : tensor<1x64x5x5xf32>) -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %137 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %4, %cst_18, %cst_18, %cst_17 : tensor<1x64x5x5xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%136 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x64x5x5xf32>
    %138 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137 : tensor<1x64x5x5xf32>) outs(%88 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x64x5x5xf32>
    %139 = tensor.empty() : tensor<1x288x5x5xf32>
    %inserted_slice_36 = tensor.insert_slice %120 into %139[0, 0, 0, 0] [1, 64, 5, 5] [1, 1, 1, 1] : tensor<1x64x5x5xf32> into tensor<1x288x5x5xf32>
    %inserted_slice_37 = tensor.insert_slice %126 into %inserted_slice_36[0, 64, 0, 0] [1, 64, 5, 5] [1, 1, 1, 1] : tensor<1x64x5x5xf32> into tensor<1x288x5x5xf32>
    %inserted_slice_38 = tensor.insert_slice %132 into %inserted_slice_37[0, 128, 0, 0] [1, 96, 5, 5] [1, 1, 1, 1] : tensor<1x96x5x5xf32> into tensor<1x288x5x5xf32>
    %inserted_slice_39 = tensor.insert_slice %138 into %inserted_slice_38[0, 224, 0, 0] [1, 64, 5, 5] [1, 1, 1, 1] : tensor<1x64x5x5xf32> into tensor<1x288x5x5xf32>
    %140 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_39, %19 : tensor<1x288x5x5xf32>, tensor<64x288x1x1xf32>) outs(%89 : tensor<1x64x5x5xf32>) -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %141 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %4, %cst_18, %cst_18, %cst_17 : tensor<1x64x5x5xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%140 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x64x5x5xf32>
    %142 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141 : tensor<1x64x5x5xf32>) outs(%88 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x64x5x5xf32>
    %143 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_39, %20 : tensor<1x288x5x5xf32>, tensor<48x288x1x1xf32>) outs(%94 : tensor<1x48x5x5xf32>) -> tensor<1x48x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %144 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %11, %cst_12, %cst_12, %cst_11 : tensor<1x48x5x5xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%143 : tensor<1x48x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x48x5x5xf32>
    %145 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144 : tensor<1x48x5x5xf32>) outs(%93 : tensor<1x48x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x48x5x5xf32>
    %padded_40 = tensor.pad %145 low[%c0, %c0, %c2, %c2] high[%c0, %c0, %c2, %c2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x48x5x5xf32> to tensor<?x?x?x?xf32>
    %146 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_40, %12 : tensor<?x?x?x?xf32>, tensor<64x48x5x5xf32>) outs(%89 : tensor<1x64x5x5xf32>) -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %147 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %4, %cst_18, %cst_18, %cst_17 : tensor<1x64x5x5xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%146 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x64x5x5xf32>
    %148 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x64x5x5xf32>) outs(%88 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %padded_41 = tensor.pad %142 low[%c0, %c0, %c1, %c1] high[%c0, %c0, %c1, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x64x5x5xf32> to tensor<?x?x?x?xf32>
    %149 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_41, %13 : tensor<?x?x?x?xf32>, tensor<96x64x3x3xf32>) outs(%102 : tensor<1x96x5x5xf32>) -> tensor<1x96x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %150 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %14, %cst_10, %cst_10, %cst_9 : tensor<1x96x5x5xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%149 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x96x5x5xf32>
    %151 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x96x5x5xf32>) outs(%101 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x96x5x5xf32>
    %padded_42 = tensor.pad %151 low[%c0, %c0, %c1, %c1] high[%c0, %c0, %c1, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x96x5x5xf32> to tensor<?x?x?x?xf32>
    %152 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_42, %15 : tensor<?x?x?x?xf32>, tensor<96x96x3x3xf32>) outs(%102 : tensor<1x96x5x5xf32>) -> tensor<1x96x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %153 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %14, %cst_10, %cst_10, %cst_9 : tensor<1x96x5x5xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%152 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x96x5x5xf32>
    %154 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153 : tensor<1x96x5x5xf32>) outs(%101 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x96x5x5xf32>
    %padded_43 = tensor.pad %inserted_slice_39 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x288x5x5xf32> to tensor<1x288x7x7xf32>
    %155 = linalg.fill ins(%cst_24 : f32) outs(%139 : tensor<1x288x5x5xf32>) -> tensor<1x288x5x5xf32>
    %156 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_43, %73 : tensor<1x288x7x7xf32>, tensor<3x3xf32>) outs(%155 : tensor<1x288x5x5xf32>) -> tensor<1x288x5x5xf32>
    %157 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x288x5x5xf32>) outs(%139 : tensor<1x288x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.divf %in, %cst_23 : f32
      linalg.yield %400 : f32
    } -> tensor<1x288x5x5xf32>
    %158 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%157, %19 : tensor<1x288x5x5xf32>, tensor<64x288x1x1xf32>) outs(%89 : tensor<1x64x5x5xf32>) -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %159 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %4, %cst_18, %cst_18, %cst_17 : tensor<1x64x5x5xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%158 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x64x5x5xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x64x5x5xf32>) outs(%88 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x64x5x5xf32>
    %inserted_slice_44 = tensor.insert_slice %142 into %139[0, 0, 0, 0] [1, 64, 5, 5] [1, 1, 1, 1] : tensor<1x64x5x5xf32> into tensor<1x288x5x5xf32>
    %inserted_slice_45 = tensor.insert_slice %148 into %inserted_slice_44[0, 64, 0, 0] [1, 64, 5, 5] [1, 1, 1, 1] : tensor<1x64x5x5xf32> into tensor<1x288x5x5xf32>
    %inserted_slice_46 = tensor.insert_slice %154 into %inserted_slice_45[0, 128, 0, 0] [1, 96, 5, 5] [1, 1, 1, 1] : tensor<1x96x5x5xf32> into tensor<1x288x5x5xf32>
    %inserted_slice_47 = tensor.insert_slice %160 into %inserted_slice_46[0, 224, 0, 0] [1, 64, 5, 5] [1, 1, 1, 1] : tensor<1x64x5x5xf32> into tensor<1x288x5x5xf32>
    %161 = tensor.empty() : tensor<1x384x2x2xf32>
    %162 = linalg.fill ins(%cst_24 : f32) outs(%161 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    %163 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_47, %21 : tensor<1x288x5x5xf32>, tensor<384x288x3x3xf32>) outs(%162 : tensor<1x384x2x2xf32>) -> tensor<1x384x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %164 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x2x2xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%163 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x2x2xf32>
    %165 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x384x2x2xf32>) outs(%161 : tensor<1x384x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x2x2xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_47, %19 : tensor<1x288x5x5xf32>, tensor<64x288x1x1xf32>) outs(%89 : tensor<1x64x5x5xf32>) -> tensor<1x64x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %167 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %4, %cst_18, %cst_18, %cst_17 : tensor<1x64x5x5xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%166 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x64x5x5xf32>
    %168 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x64x5x5xf32>) outs(%88 : tensor<1x64x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x64x5x5xf32>
    %padded_48 = tensor.pad %168 low[%c0, %c0, %c1, %c1] high[%c0, %c0, %c1, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x64x5x5xf32> to tensor<?x?x?x?xf32>
    %169 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_48, %13 : tensor<?x?x?x?xf32>, tensor<96x64x3x3xf32>) outs(%102 : tensor<1x96x5x5xf32>) -> tensor<1x96x5x5xf32>
    cf.assert %58, "training is not supported for now"
    %170 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %14, %cst_10, %cst_10, %cst_9 : tensor<1x96x5x5xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%169 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x96x5x5xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170 : tensor<1x96x5x5xf32>) outs(%101 : tensor<1x96x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x96x5x5xf32>
    %172 = tensor.empty() : tensor<1x96x2x2xf32>
    %173 = linalg.fill ins(%cst_24 : f32) outs(%172 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    %174 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%171, %15 : tensor<1x96x5x5xf32>, tensor<96x96x3x3xf32>) outs(%173 : tensor<1x96x2x2xf32>) -> tensor<1x96x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %14, %cst_10, %cst_10, %cst_9 : tensor<1x96x2x2xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%174 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x96x2x2xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x96x2x2xf32>) outs(%172 : tensor<1x96x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x96x2x2xf32>
    %177 = tensor.empty() : tensor<1x288x2x2xf32>
    %178 = linalg.fill ins(%cst_21 : f32) outs(%177 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    %179 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_47, %73 : tensor<1x288x5x5xf32>, tensor<3x3xf32>) outs(%178 : tensor<1x288x2x2xf32>) -> tensor<1x288x2x2xf32>
    %180 = tensor.empty() : tensor<1x768x2x2xf32>
    %inserted_slice_49 = tensor.insert_slice %165 into %180[0, 0, 0, 0] [1, 384, 2, 2] [1, 1, 1, 1] : tensor<1x384x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_50 = tensor.insert_slice %176 into %inserted_slice_49[0, 384, 0, 0] [1, 96, 2, 2] [1, 1, 1, 1] : tensor<1x96x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_51 = tensor.insert_slice %179 into %inserted_slice_50[0, 480, 0, 0] [1, 288, 2, 2] [1, 1, 1, 1] : tensor<1x288x2x2xf32> into tensor<1x768x2x2xf32>
    %181 = tensor.empty() : tensor<1x192x2x2xf32>
    %182 = linalg.fill ins(%cst_24 : f32) outs(%181 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    %183 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_51, %23 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %184 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%183 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %185 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %186 = tensor.empty() : tensor<1x128x2x2xf32>
    %187 = linalg.fill ins(%cst_24 : f32) outs(%186 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    %188 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_51, %24 : tensor<1x768x2x2xf32>, tensor<128x768x1x1xf32>) outs(%187 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %189 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %25, %cst_6, %cst_6, %cst_5 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%188 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x128x2x2xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x128x2x2xf32>) outs(%186 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_52 = tensor.pad %190 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x128x2x2xf32> to tensor<?x?x?x?xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_52, %26 : tensor<?x?x?x?xf32>, tensor<128x128x1x7xf32>) outs(%187 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %25, %cst_6, %cst_6, %cst_5 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%191 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x128x2x2xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x128x2x2xf32>) outs(%186 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_53 = tensor.pad %193 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x128x2x2xf32> to tensor<?x?x?x?xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_53, %27 : tensor<?x?x?x?xf32>, tensor<192x128x7x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%194 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %padded_54 = tensor.pad %190 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x128x2x2xf32> to tensor<?x?x?x?xf32>
    %197 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_54, %28 : tensor<?x?x?x?xf32>, tensor<128x128x7x1xf32>) outs(%187 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %198 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %25, %cst_6, %cst_6, %cst_5 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%197 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x128x2x2xf32>
    %199 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198 : tensor<1x128x2x2xf32>) outs(%186 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_55 = tensor.pad %199 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x128x2x2xf32> to tensor<?x?x?x?xf32>
    %200 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_55, %26 : tensor<?x?x?x?xf32>, tensor<128x128x1x7xf32>) outs(%187 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %201 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %25, %cst_6, %cst_6, %cst_5 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%200 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x128x2x2xf32>
    %202 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x128x2x2xf32>) outs(%186 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_56 = tensor.pad %202 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x128x2x2xf32> to tensor<?x?x?x?xf32>
    %203 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_56, %28 : tensor<?x?x?x?xf32>, tensor<128x128x7x1xf32>) outs(%187 : tensor<1x128x2x2xf32>) -> tensor<1x128x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %204 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %25, %cst_6, %cst_6, %cst_5 : tensor<1x128x2x2xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%203 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x128x2x2xf32>
    %205 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<1x128x2x2xf32>) outs(%186 : tensor<1x128x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x128x2x2xf32>
    %padded_57 = tensor.pad %205 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x128x2x2xf32> to tensor<?x?x?x?xf32>
    %206 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_57, %29 : tensor<?x?x?x?xf32>, tensor<192x128x1x7xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %207 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%206 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %208 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_58 = tensor.pad %inserted_slice_51 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %209 = linalg.fill ins(%cst_24 : f32) outs(%180 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    %210 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_58, %73 : tensor<1x768x4x4xf32>, tensor<3x3xf32>) outs(%209 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    %211 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x768x2x2xf32>) outs(%180 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.divf %in, %cst_23 : f32
      linalg.yield %400 : f32
    } -> tensor<1x768x2x2xf32>
    %212 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%211, %23 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %213 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%212 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %214 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %inserted_slice_59 = tensor.insert_slice %185 into %180[0, 0, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_60 = tensor.insert_slice %196 into %inserted_slice_59[0, 192, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_61 = tensor.insert_slice %208 into %inserted_slice_60[0, 384, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_62 = tensor.insert_slice %214 into %inserted_slice_61[0, 576, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_62, %23 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %216 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%215 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %217 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %218 = tensor.empty() : tensor<1x160x2x2xf32>
    %219 = linalg.fill ins(%cst_24 : f32) outs(%218 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    %220 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_62, %30 : tensor<1x768x2x2xf32>, tensor<160x768x1x1xf32>) outs(%219 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %221 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %31, %cst_4, %cst_4, %cst_3 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%220 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x160x2x2xf32>
    %222 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221 : tensor<1x160x2x2xf32>) outs(%218 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x160x2x2xf32>
    %padded_63 = tensor.pad %222 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %223 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_63, %32 : tensor<?x?x?x?xf32>, tensor<160x160x1x7xf32>) outs(%219 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %224 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %31, %cst_4, %cst_4, %cst_3 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%223 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x160x2x2xf32>
    %225 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x160x2x2xf32>) outs(%218 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x160x2x2xf32>
    %padded_64 = tensor.pad %225 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %226 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_64, %33 : tensor<?x?x?x?xf32>, tensor<192x160x7x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %227 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%226 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %228 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %padded_65 = tensor.pad %222 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %229 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_65, %34 : tensor<?x?x?x?xf32>, tensor<160x160x7x1xf32>) outs(%219 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %230 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %31, %cst_4, %cst_4, %cst_3 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%229 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x160x2x2xf32>
    %231 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230 : tensor<1x160x2x2xf32>) outs(%218 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x160x2x2xf32>
    %padded_66 = tensor.pad %231 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %232 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_66, %32 : tensor<?x?x?x?xf32>, tensor<160x160x1x7xf32>) outs(%219 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %233 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %31, %cst_4, %cst_4, %cst_3 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%232 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x160x2x2xf32>
    %234 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233 : tensor<1x160x2x2xf32>) outs(%218 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x160x2x2xf32>
    %padded_67 = tensor.pad %234 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %235 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_67, %34 : tensor<?x?x?x?xf32>, tensor<160x160x7x1xf32>) outs(%219 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %236 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %31, %cst_4, %cst_4, %cst_3 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%235 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x160x2x2xf32>
    %237 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x160x2x2xf32>) outs(%218 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x160x2x2xf32>
    %padded_68 = tensor.pad %237 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %238 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_68, %35 : tensor<?x?x?x?xf32>, tensor<192x160x1x7xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %239 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%238 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_69 = tensor.pad %inserted_slice_62 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %241 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_69, %73 : tensor<1x768x4x4xf32>, tensor<3x3xf32>) outs(%209 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    %242 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x768x2x2xf32>) outs(%180 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.divf %in, %cst_23 : f32
      linalg.yield %400 : f32
    } -> tensor<1x768x2x2xf32>
    %243 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%242, %23 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %244 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%243 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %245 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %inserted_slice_70 = tensor.insert_slice %217 into %180[0, 0, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_71 = tensor.insert_slice %228 into %inserted_slice_70[0, 192, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_72 = tensor.insert_slice %240 into %inserted_slice_71[0, 384, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_73 = tensor.insert_slice %245 into %inserted_slice_72[0, 576, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %246 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_73, %23 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %247 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%246 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %248 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %249 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_73, %30 : tensor<1x768x2x2xf32>, tensor<160x768x1x1xf32>) outs(%219 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %250 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %31, %cst_4, %cst_4, %cst_3 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%249 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x160x2x2xf32>
    %251 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250 : tensor<1x160x2x2xf32>) outs(%218 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x160x2x2xf32>
    %padded_74 = tensor.pad %251 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %252 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_74, %32 : tensor<?x?x?x?xf32>, tensor<160x160x1x7xf32>) outs(%219 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %253 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %31, %cst_4, %cst_4, %cst_3 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%252 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x160x2x2xf32>
    %254 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<1x160x2x2xf32>) outs(%218 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x160x2x2xf32>
    %padded_75 = tensor.pad %254 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %255 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_75, %33 : tensor<?x?x?x?xf32>, tensor<192x160x7x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %256 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%255 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %257 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %padded_76 = tensor.pad %251 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %258 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_76, %34 : tensor<?x?x?x?xf32>, tensor<160x160x7x1xf32>) outs(%219 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %259 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %31, %cst_4, %cst_4, %cst_3 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%258 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x160x2x2xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x160x2x2xf32>) outs(%218 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x160x2x2xf32>
    %padded_77 = tensor.pad %260 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_77, %32 : tensor<?x?x?x?xf32>, tensor<160x160x1x7xf32>) outs(%219 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %262 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %31, %cst_4, %cst_4, %cst_3 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%261 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x160x2x2xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x160x2x2xf32>) outs(%218 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x160x2x2xf32>
    %padded_78 = tensor.pad %263 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_78, %34 : tensor<?x?x?x?xf32>, tensor<160x160x7x1xf32>) outs(%219 : tensor<1x160x2x2xf32>) -> tensor<1x160x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %265 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %31, %cst_4, %cst_4, %cst_3 : tensor<1x160x2x2xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%264 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x160x2x2xf32>
    %266 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x160x2x2xf32>) outs(%218 : tensor<1x160x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x160x2x2xf32>
    %padded_79 = tensor.pad %266 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x160x2x2xf32> to tensor<?x?x?x?xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_79, %35 : tensor<?x?x?x?xf32>, tensor<192x160x1x7xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %268 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%267 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %269 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_80 = tensor.pad %inserted_slice_73 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %270 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_80, %73 : tensor<1x768x4x4xf32>, tensor<3x3xf32>) outs(%209 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    %271 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270 : tensor<1x768x2x2xf32>) outs(%180 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.divf %in, %cst_23 : f32
      linalg.yield %400 : f32
    } -> tensor<1x768x2x2xf32>
    %272 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%271, %23 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %273 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%272 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %274 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %inserted_slice_81 = tensor.insert_slice %248 into %180[0, 0, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_82 = tensor.insert_slice %257 into %inserted_slice_81[0, 192, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_83 = tensor.insert_slice %269 into %inserted_slice_82[0, 384, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_84 = tensor.insert_slice %274 into %inserted_slice_83[0, 576, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %275 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_84, %23 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %276 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%275 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %277 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %padded_85 = tensor.pad %277 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x192x2x2xf32> to tensor<?x?x?x?xf32>
    %278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_85, %36 : tensor<?x?x?x?xf32>, tensor<192x192x1x7xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %279 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%278 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_86 = tensor.pad %280 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x192x2x2xf32> to tensor<?x?x?x?xf32>
    %281 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_86, %37 : tensor<?x?x?x?xf32>, tensor<192x192x7x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%281 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %padded_87 = tensor.pad %277 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x192x2x2xf32> to tensor<?x?x?x?xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_87, %37 : tensor<?x?x?x?xf32>, tensor<192x192x7x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %285 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%284 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %286 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_88 = tensor.pad %286 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x192x2x2xf32> to tensor<?x?x?x?xf32>
    %287 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_88, %36 : tensor<?x?x?x?xf32>, tensor<192x192x1x7xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %288 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%287 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %289 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_89 = tensor.pad %289 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x192x2x2xf32> to tensor<?x?x?x?xf32>
    %290 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_89, %37 : tensor<?x?x?x?xf32>, tensor<192x192x7x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %291 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%290 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %292 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_90 = tensor.pad %292 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x192x2x2xf32> to tensor<?x?x?x?xf32>
    %293 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_90, %36 : tensor<?x?x?x?xf32>, tensor<192x192x1x7xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %294 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%293 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %295 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_91 = tensor.pad %inserted_slice_84 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x768x2x2xf32> to tensor<1x768x4x4xf32>
    %296 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_91, %73 : tensor<1x768x4x4xf32>, tensor<3x3xf32>) outs(%209 : tensor<1x768x2x2xf32>) -> tensor<1x768x2x2xf32>
    %297 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x768x2x2xf32>) outs(%180 : tensor<1x768x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.divf %in, %cst_23 : f32
      linalg.yield %400 : f32
    } -> tensor<1x768x2x2xf32>
    %298 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%297, %23 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %299 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%298 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %300 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %inserted_slice_92 = tensor.insert_slice %277 into %180[0, 0, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_93 = tensor.insert_slice %283 into %inserted_slice_92[0, 192, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_94 = tensor.insert_slice %295 into %inserted_slice_93[0, 384, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %inserted_slice_95 = tensor.insert_slice %300 into %inserted_slice_94[0, 576, 0, 0] [1, 192, 2, 2] [1, 1, 1, 1] : tensor<1x192x2x2xf32> into tensor<1x768x2x2xf32>
    %301 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_95, %23 : tensor<1x768x2x2xf32>, tensor<192x768x1x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %302 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%301 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %304 = tensor.empty() : tensor<1x320x0x0xf32>
    %305 = linalg.fill ins(%cst_24 : f32) outs(%304 : tensor<1x320x0x0xf32>) -> tensor<1x320x0x0xf32>
    %306 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%303, %38 : tensor<1x192x2x2xf32>, tensor<320x192x3x3xf32>) outs(%305 : tensor<1x320x0x0xf32>) -> tensor<1x320x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %307 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %39, %cst_2, %cst_2, %cst_1 : tensor<1x320x0x0xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%306 : tensor<1x320x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x320x0x0xf32>
    %308 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x320x0x0xf32>) outs(%304 : tensor<1x320x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x320x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %padded_96 = tensor.pad %303 low[%c0, %c0, %c0, %c3] high[%c0, %c0, %c0, %c3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x192x2x2xf32> to tensor<?x?x?x?xf32>
    %309 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_96, %36 : tensor<?x?x?x?xf32>, tensor<192x192x1x7xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %310 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%309 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %311 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %padded_97 = tensor.pad %311 low[%c0, %c0, %c3, %c0] high[%c0, %c0, %c3, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x192x2x2xf32> to tensor<?x?x?x?xf32>
    %312 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_97, %37 : tensor<?x?x?x?xf32>, tensor<192x192x7x1xf32>) outs(%182 : tensor<1x192x2x2xf32>) -> tensor<1x192x2x2xf32>
    cf.assert %58, "training is not supported for now"
    %313 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x2x2xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%312 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x2x2xf32>
    %314 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x192x2x2xf32>) outs(%181 : tensor<1x192x2x2xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x2x2xf32>
    %315 = tensor.empty() : tensor<1x192x0x0xf32>
    %316 = linalg.fill ins(%cst_24 : f32) outs(%315 : tensor<1x192x0x0xf32>) -> tensor<1x192x0x0xf32>
    %317 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%314, %40 : tensor<1x192x2x2xf32>, tensor<192x192x3x3xf32>) outs(%316 : tensor<1x192x0x0xf32>) -> tensor<1x192x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %318 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x0x0xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%317 : tensor<1x192x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x0x0xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318 : tensor<1x192x0x0xf32>) outs(%315 : tensor<1x192x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x0x0xf32>
    %320 = tensor.empty() : tensor<1x768x0x0xf32>
    %321 = linalg.fill ins(%cst_21 : f32) outs(%320 : tensor<1x768x0x0xf32>) -> tensor<1x768x0x0xf32>
    %322 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%inserted_slice_95, %73 : tensor<1x768x2x2xf32>, tensor<3x3xf32>) outs(%321 : tensor<1x768x0x0xf32>) -> tensor<1x768x0x0xf32>
    %323 = tensor.empty() : tensor<1x1280x0x0xf32>
    %inserted_slice_98 = tensor.insert_slice %308 into %323[0, 0, 0, 0] [1, 320, 0, 0] [1, 1, 1, 1] : tensor<1x320x0x0xf32> into tensor<1x1280x0x0xf32>
    %inserted_slice_99 = tensor.insert_slice %319 into %inserted_slice_98[0, 320, 0, 0] [1, 192, 0, 0] [1, 1, 1, 1] : tensor<1x192x0x0xf32> into tensor<1x1280x0x0xf32>
    %inserted_slice_100 = tensor.insert_slice %322 into %inserted_slice_99[0, 512, 0, 0] [1, 768, 0, 0] [1, 1, 1, 1] : tensor<1x768x0x0xf32> into tensor<1x1280x0x0xf32>
    %324 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_100, %41 : tensor<1x1280x0x0xf32>, tensor<320x1280x1x1xf32>) outs(%305 : tensor<1x320x0x0xf32>) -> tensor<1x320x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %325 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %39, %cst_2, %cst_2, %cst_1 : tensor<1x320x0x0xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%324 : tensor<1x320x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x320x0x0xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x320x0x0xf32>) outs(%304 : tensor<1x320x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x320x0x0xf32>
    %327 = tensor.empty() : tensor<1x384x0x0xf32>
    %328 = linalg.fill ins(%cst_24 : f32) outs(%327 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    %329 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_100, %42 : tensor<1x1280x0x0xf32>, tensor<384x1280x1x1xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %330 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%329 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %331 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %padded_101 = tensor.pad %331 low[%c0, %c0, %c0, %c1] high[%c0, %c0, %c0, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x384x0x0xf32> to tensor<?x?x?x?xf32>
    %332 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_101, %43 : tensor<?x?x?x?xf32>, tensor<384x384x1x3xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %333 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%332 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %334 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %padded_102 = tensor.pad %331 low[%c0, %c0, %c1, %c0] high[%c0, %c0, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x384x0x0xf32> to tensor<?x?x?x?xf32>
    %335 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_102, %44 : tensor<?x?x?x?xf32>, tensor<384x384x3x1xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %336 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%335 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %337 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %inserted_slice_103 = tensor.insert_slice %334 into %320[0, 0, 0, 0] [1, 384, 0, 0] [1, 1, 1, 1] : tensor<1x384x0x0xf32> into tensor<1x768x0x0xf32>
    %inserted_slice_104 = tensor.insert_slice %337 into %inserted_slice_103[0, 384, 0, 0] [1, 384, 0, 0] [1, 1, 1, 1] : tensor<1x384x0x0xf32> into tensor<1x768x0x0xf32>
    %338 = tensor.empty() : tensor<1x448x0x0xf32>
    %339 = linalg.fill ins(%cst_24 : f32) outs(%338 : tensor<1x448x0x0xf32>) -> tensor<1x448x0x0xf32>
    %340 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_100, %45 : tensor<1x1280x0x0xf32>, tensor<448x1280x1x1xf32>) outs(%339 : tensor<1x448x0x0xf32>) -> tensor<1x448x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %341 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %46, %cst_0, %cst_0, %cst : tensor<1x448x0x0xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>) outs(%340 : tensor<1x448x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x448x0x0xf32>
    %342 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x448x0x0xf32>) outs(%338 : tensor<1x448x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x448x0x0xf32>
    %padded_105 = tensor.pad %342 low[%c0, %c0, %c1, %c1] high[%c0, %c0, %c1, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x448x0x0xf32> to tensor<?x?x?x?xf32>
    %343 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_105, %47 : tensor<?x?x?x?xf32>, tensor<384x448x3x3xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %344 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%343 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %345 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %padded_106 = tensor.pad %345 low[%c0, %c0, %c0, %c1] high[%c0, %c0, %c0, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x384x0x0xf32> to tensor<?x?x?x?xf32>
    %346 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_106, %43 : tensor<?x?x?x?xf32>, tensor<384x384x1x3xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %347 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%346 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %348 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %padded_107 = tensor.pad %345 low[%c0, %c0, %c1, %c0] high[%c0, %c0, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x384x0x0xf32> to tensor<?x?x?x?xf32>
    %349 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_107, %44 : tensor<?x?x?x?xf32>, tensor<384x384x3x1xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %350 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%349 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %351 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %inserted_slice_108 = tensor.insert_slice %348 into %320[0, 0, 0, 0] [1, 384, 0, 0] [1, 1, 1, 1] : tensor<1x384x0x0xf32> into tensor<1x768x0x0xf32>
    %inserted_slice_109 = tensor.insert_slice %351 into %inserted_slice_108[0, 384, 0, 0] [1, 384, 0, 0] [1, 1, 1, 1] : tensor<1x384x0x0xf32> into tensor<1x768x0x0xf32>
    %padded_110 = tensor.pad %inserted_slice_100 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x1280x0x0xf32> to tensor<1x1280x2x2xf32>
    %352 = linalg.fill ins(%cst_24 : f32) outs(%323 : tensor<1x1280x0x0xf32>) -> tensor<1x1280x0x0xf32>
    %353 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_110, %73 : tensor<1x1280x2x2xf32>, tensor<3x3xf32>) outs(%352 : tensor<1x1280x0x0xf32>) -> tensor<1x1280x0x0xf32>
    %354 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x1280x0x0xf32>) outs(%323 : tensor<1x1280x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.divf %in, %cst_23 : f32
      linalg.yield %400 : f32
    } -> tensor<1x1280x0x0xf32>
    %355 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%354, %48 : tensor<1x1280x0x0xf32>, tensor<192x1280x1x1xf32>) outs(%316 : tensor<1x192x0x0xf32>) -> tensor<1x192x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %356 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x0x0xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%355 : tensor<1x192x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x0x0xf32>
    %357 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356 : tensor<1x192x0x0xf32>) outs(%315 : tensor<1x192x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x0x0xf32>
    %358 = tensor.empty() : tensor<1x2048x0x0xf32>
    %inserted_slice_111 = tensor.insert_slice %326 into %358[0, 0, 0, 0] [1, 320, 0, 0] [1, 1, 1, 1] : tensor<1x320x0x0xf32> into tensor<1x2048x0x0xf32>
    %inserted_slice_112 = tensor.insert_slice %inserted_slice_104 into %inserted_slice_111[0, 320, 0, 0] [1, 768, 0, 0] [1, 1, 1, 1] : tensor<1x768x0x0xf32> into tensor<1x2048x0x0xf32>
    %inserted_slice_113 = tensor.insert_slice %inserted_slice_109 into %inserted_slice_112[0, 1088, 0, 0] [1, 768, 0, 0] [1, 1, 1, 1] : tensor<1x768x0x0xf32> into tensor<1x2048x0x0xf32>
    %inserted_slice_114 = tensor.insert_slice %357 into %inserted_slice_113[0, 1856, 0, 0] [1, 192, 0, 0] [1, 1, 1, 1] : tensor<1x192x0x0xf32> into tensor<1x2048x0x0xf32>
    %359 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_114, %49 : tensor<1x2048x0x0xf32>, tensor<320x2048x1x1xf32>) outs(%305 : tensor<1x320x0x0xf32>) -> tensor<1x320x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %360 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %39, %cst_2, %cst_2, %cst_1 : tensor<1x320x0x0xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>) outs(%359 : tensor<1x320x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x320x0x0xf32>
    %361 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x320x0x0xf32>) outs(%304 : tensor<1x320x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x320x0x0xf32>
    %362 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_114, %50 : tensor<1x2048x0x0xf32>, tensor<384x2048x1x1xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %363 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%362 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %364 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %padded_115 = tensor.pad %364 low[%c0, %c0, %c0, %c1] high[%c0, %c0, %c0, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x384x0x0xf32> to tensor<?x?x?x?xf32>
    %365 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_115, %43 : tensor<?x?x?x?xf32>, tensor<384x384x1x3xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %366 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%365 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %367 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %padded_116 = tensor.pad %364 low[%c0, %c0, %c1, %c0] high[%c0, %c0, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x384x0x0xf32> to tensor<?x?x?x?xf32>
    %368 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_116, %44 : tensor<?x?x?x?xf32>, tensor<384x384x3x1xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %369 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%368 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %370 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %inserted_slice_117 = tensor.insert_slice %367 into %320[0, 0, 0, 0] [1, 384, 0, 0] [1, 1, 1, 1] : tensor<1x384x0x0xf32> into tensor<1x768x0x0xf32>
    %inserted_slice_118 = tensor.insert_slice %370 into %inserted_slice_117[0, 384, 0, 0] [1, 384, 0, 0] [1, 1, 1, 1] : tensor<1x384x0x0xf32> into tensor<1x768x0x0xf32>
    %371 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_114, %51 : tensor<1x2048x0x0xf32>, tensor<448x2048x1x1xf32>) outs(%339 : tensor<1x448x0x0xf32>) -> tensor<1x448x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %372 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371, %46, %cst_0, %cst_0, %cst : tensor<1x448x0x0xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>, tensor<448xf32>) outs(%371 : tensor<1x448x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x448x0x0xf32>
    %373 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x448x0x0xf32>) outs(%338 : tensor<1x448x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x448x0x0xf32>
    %padded_119 = tensor.pad %373 low[%c0, %c0, %c1, %c1] high[%c0, %c0, %c1, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x448x0x0xf32> to tensor<?x?x?x?xf32>
    %374 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_119, %47 : tensor<?x?x?x?xf32>, tensor<384x448x3x3xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %375 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%374 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %376 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %padded_120 = tensor.pad %376 low[%c0, %c0, %c0, %c1] high[%c0, %c0, %c0, %c1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x384x0x0xf32> to tensor<?x?x?x?xf32>
    %377 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_120, %43 : tensor<?x?x?x?xf32>, tensor<384x384x1x3xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %378 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%377 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %379 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %padded_121 = tensor.pad %376 low[%c0, %c0, %c1, %c0] high[%c0, %c0, %c1, %c0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x384x0x0xf32> to tensor<?x?x?x?xf32>
    %380 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_121, %44 : tensor<?x?x?x?xf32>, tensor<384x384x3x1xf32>) outs(%328 : tensor<1x384x0x0xf32>) -> tensor<1x384x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %381 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380, %22, %cst_8, %cst_8, %cst_7 : tensor<1x384x0x0xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%380 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x384x0x0xf32>
    %382 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381 : tensor<1x384x0x0xf32>) outs(%327 : tensor<1x384x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x384x0x0xf32>
    %inserted_slice_122 = tensor.insert_slice %379 into %320[0, 0, 0, 0] [1, 384, 0, 0] [1, 1, 1, 1] : tensor<1x384x0x0xf32> into tensor<1x768x0x0xf32>
    %inserted_slice_123 = tensor.insert_slice %382 into %inserted_slice_122[0, 384, 0, 0] [1, 384, 0, 0] [1, 1, 1, 1] : tensor<1x384x0x0xf32> into tensor<1x768x0x0xf32>
    %padded_124 = tensor.pad %inserted_slice_114 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_24 : f32
    } : tensor<1x2048x0x0xf32> to tensor<1x2048x2x2xf32>
    %383 = linalg.fill ins(%cst_24 : f32) outs(%358 : tensor<1x2048x0x0xf32>) -> tensor<1x2048x0x0xf32>
    %384 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_124, %73 : tensor<1x2048x2x2xf32>, tensor<3x3xf32>) outs(%383 : tensor<1x2048x0x0xf32>) -> tensor<1x2048x0x0xf32>
    %385 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384 : tensor<1x2048x0x0xf32>) outs(%358 : tensor<1x2048x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.divf %in, %cst_23 : f32
      linalg.yield %400 : f32
    } -> tensor<1x2048x0x0xf32>
    %386 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%385, %52 : tensor<1x2048x0x0xf32>, tensor<192x2048x1x1xf32>) outs(%316 : tensor<1x192x0x0xf32>) -> tensor<1x192x0x0xf32>
    cf.assert %58, "training is not supported for now"
    %387 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386, %8, %cst_14, %cst_14, %cst_13 : tensor<1x192x0x0xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%386 : tensor<1x192x0x0xf32>) {
    ^bb0(%in: f32, %in_129: f32, %in_130: f32, %in_131: f32, %in_132: f32, %out: f32):
      %400 = arith.truncf %cst_22 : f64 to f32
      %401 = arith.addf %in_132, %400 : f32
      %402 = math.rsqrt %401 : f32
      %403 = arith.subf %in, %in_131 : f32
      %404 = arith.mulf %403, %402 : f32
      %405 = arith.mulf %404, %in_129 : f32
      %406 = arith.addf %405, %in_130 : f32
      linalg.yield %406 : f32
    } -> tensor<1x192x0x0xf32>
    %388 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387 : tensor<1x192x0x0xf32>) outs(%315 : tensor<1x192x0x0xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.cmpf ugt, %in, %cst_24 : f32
      %401 = arith.select %400, %in, %cst_24 : f32
      linalg.yield %401 : f32
    } -> tensor<1x192x0x0xf32>
    %inserted_slice_125 = tensor.insert_slice %361 into %358[0, 0, 0, 0] [1, 320, 0, 0] [1, 1, 1, 1] : tensor<1x320x0x0xf32> into tensor<1x2048x0x0xf32>
    %inserted_slice_126 = tensor.insert_slice %inserted_slice_118 into %inserted_slice_125[0, 320, 0, 0] [1, 768, 0, 0] [1, 1, 1, 1] : tensor<1x768x0x0xf32> into tensor<1x2048x0x0xf32>
    %inserted_slice_127 = tensor.insert_slice %inserted_slice_123 into %inserted_slice_126[0, 1088, 0, 0] [1, 768, 0, 0] [1, 1, 1, 1] : tensor<1x768x0x0xf32> into tensor<1x2048x0x0xf32>
    %inserted_slice_128 = tensor.insert_slice %388 into %inserted_slice_127[0, 1856, 0, 0] [1, 192, 0, 0] [1, 1, 1, 1] : tensor<1x192x0x0xf32> into tensor<1x2048x0x0xf32>
    %389 = tensor.empty() : tensor<1x2048x1x1xf32>
    %390 = linalg.fill ins(%cst_24 : f32) outs(%389 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %391 = tensor.empty() : tensor<0x0xf32>
    %392 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%inserted_slice_128, %391 : tensor<1x2048x0x0xf32>, tensor<0x0xf32>) outs(%390 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %393 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392 : tensor<1x2048x1x1xf32>) outs(%389 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %400 = arith.divf %in, %cst_24 : f32
      linalg.yield %400 : f32
    } -> tensor<1x2048x1x1xf32>
    %collapsed = tensor.collapse_shape %393 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %394 = tensor.empty() : tensor<2048x1000xf32>
    %395 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%54 : tensor<1000x2048xf32>) outs(%394 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %396 = tensor.empty() : tensor<1x1000xf32>
    %cst_100 = arith.constant 5.000000e-01 : f32
    %397 = linalg.fill ins(%cst_100 : f32) outs(%396 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %398 = linalg.matmul ins(%collapsed, %395 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%397 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %399 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%398, %53 : tensor<1x1000xf32>, tensor<1000xf32>) outs(%396 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_129: f32, %out: f32):
      %400 = arith.addf %in, %in_129 : f32
      linalg.yield %400 : f32
    } -> tensor<1x1000xf32>
    return %397 : tensor<1x1000xf32>
  }
}

