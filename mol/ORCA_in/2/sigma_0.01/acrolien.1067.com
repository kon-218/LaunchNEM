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

# 	5387
* xyz 0 1
		C   -1.198958  -0.236194   0.006138
		O   -1.485020  -1.219982   0.631936
		C   -0.062015   0.579533   0.287084
		C    1.167229  -0.023320  -0.109902
		H   -1.619153  -0.135416  -1.026281
		H   -0.063584   1.483479   0.634709
		H    1.308430  -1.028047  -0.417166
		H    2.018157   0.600987   0.011335
*