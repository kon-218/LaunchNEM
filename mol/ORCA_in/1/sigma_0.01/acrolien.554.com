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

# 	8342
* xyz 0 1
		C   -1.186974  -0.277818  -0.111549
		O   -1.195340  -1.456866  -0.123483
		C    0.023143   0.573112  -0.021591
		C    1.226333  -0.008377  -0.104040
		H   -2.089352   0.129577   0.118110
		H   -0.120125   1.598389  -0.003656
		H    1.375914  -1.087473   0.013194
		H    2.030305   0.503469   0.183881
*