add_mlir_library(RaiseToAffine
        RaiseToAffine.cpp
        AffineCFG.cpp

        DISABLE_INSTALL

        LINK_LIBS PUBLIC
        MLIRAffineDialect
        MLIRIR
        MLIRPass
        )
