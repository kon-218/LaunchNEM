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

# 	13087
* xyz 0 1
		C   -1.180511  -0.336153   0.005647
		O   -1.505173  -1.209276   0.799199
		C    0.044903   0.468873   0.234311
		C    1.241834   0.049232  -0.136490
		H   -1.840550  -0.088385  -0.861185
		H   -0.203502   1.474884   0.776186
		H    1.340672  -0.932657  -0.688737
		H    2.056127   0.638718  -0.041669
*