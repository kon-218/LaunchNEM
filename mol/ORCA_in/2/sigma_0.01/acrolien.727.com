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

# 	10557
* xyz 0 1
		C   -1.186969  -0.410627   0.066723
		O   -2.185128  -0.409445   0.745484
		C   -0.006920   0.418865   0.352019
		C    1.194920   0.073134  -0.274957
		H   -1.154746  -0.911814  -0.867075
		H   -0.046093   1.201081   1.105095
		H    1.393704  -0.542372  -1.045197
		H    1.988190   0.615660  -0.071665
*