! B3LYP 6-31G
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	3995
* xyz 0 1
		C   -1.127645  -0.347843   0.045375
		O   -2.017995  -0.545573   0.880938
		C    0.081649   0.423486   0.284958
		C    1.231284   0.099438  -0.208890
		H   -1.274848  -0.829751  -1.040466
		H   -0.177014   1.212442   0.981119
		H    1.266111  -0.748924  -0.928347
		H    1.974787   0.730796  -0.031441
*
