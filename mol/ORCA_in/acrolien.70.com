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

# 	27876
* xyz 0 1
		C   -0.539244  -0.453943  -0.015785
		O   -0.665583  -1.669908  -0.004146
		C    0.663594   0.375852   0.080913
		C    1.889914  -0.041909  -0.041392
		H   -1.393488   0.227435  -0.091087
		H    0.412339   1.369057  -0.245031
		H    1.941769  -1.087112   0.199232
		H    2.570926   0.662747  -0.097306
*
