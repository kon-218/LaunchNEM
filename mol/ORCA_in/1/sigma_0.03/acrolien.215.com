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

# 	32033
* xyz 0 1
		C   -0.609067  -0.364539   0.074994
		O   -0.539161  -1.625865  -0.042811
		C    0.611374   0.372199  -0.073231
		C    1.866630  -0.138932   0.018986
		H   -1.694223   0.088546   0.219327
		H    0.323409   1.391666  -0.084749
		H    1.855105  -1.365093   0.237879
		H    2.720769   0.515892   0.051250
*