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

# 	9923
* xyz 0 1
		C   -1.176187  -0.235381  -0.027069
		O   -1.151247  -1.351578   0.332251
		C   -0.021589   0.601267   0.065938
		C    1.151578  -0.037734  -0.108081
		H   -2.048725   0.306601  -0.498791
		H   -0.177501   1.593998   0.378440
		H    1.177083  -1.194584  -0.174603
		H    2.286317   0.392890   0.019956
*