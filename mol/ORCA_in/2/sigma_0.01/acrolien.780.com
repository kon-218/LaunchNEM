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

# 	2471
* xyz 0 1
		C   -1.188384  -0.466098   0.061200
		O   -1.645202  -1.289950  -0.647327
		C    0.064619   0.408134  -0.272895
		C    1.237220   0.035193   0.146657
		H   -1.664365  -0.056302   0.882550
		H   -0.261180   1.417713  -0.629087
		H    1.541630  -0.871727   0.526565
		H    1.954374   0.787741   0.028318
*
