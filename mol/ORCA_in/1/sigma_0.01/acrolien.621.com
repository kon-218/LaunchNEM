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

# 	10790
* xyz 0 1
		C   -1.201687  -0.282056   0.039776
		O   -1.548578  -1.169679   0.841689
		C    0.038842   0.539155   0.099015
		C    1.293342   0.054066  -0.146029
		H   -1.900569  -0.301976  -0.751967
		H   -0.110082   1.589945   0.479858
		H    1.299716  -1.067697  -0.422238
		H    2.083764   0.708495  -0.072810
*