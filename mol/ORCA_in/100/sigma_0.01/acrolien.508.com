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

# 	7938
* xyz 0 1
		C   -1.223788  -0.349833  -0.134353
		O   -2.160502  -0.270943  -0.853627
		C    0.134762   0.304608  -0.337600
		C    1.140091   0.143768   0.372334
		H   -1.081871  -0.993438   0.815255
		H    0.017576   0.946853  -1.215384
		H    1.241185  -0.463112   1.159481
		H    1.990529   0.705275   0.177522
*