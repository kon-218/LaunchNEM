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

# 	14323
* xyz 0 1
		C   -1.188287  -0.319930   0.011600
		O   -1.238142  -1.548760   0.344725
		C    0.010536   0.518304   0.070901
		C    1.229913  -0.034474  -0.080352
		H   -2.106345   0.165444  -0.494840
		H   -0.056983   1.653833   0.327033
		H    1.254725  -1.079381  -0.156770
		H    2.075503   0.633714  -0.035119
*