! B3LYP cc-pVDZ
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	17206
* xyz 0 1
		C   -1.169834  -0.362396  -0.001139
		O   -1.341984  -1.446082  -0.375379
		C   -0.006090   0.499922  -0.159966
		C    1.210517  -0.008249   0.111521
		H   -2.044965   0.224834   0.396299
		H   -0.068846   1.563433  -0.199067
		H    1.329667  -1.024452   0.172016
		H    2.023714   0.553656   0.061397
*
