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

# 	10030
* xyz 0 1
		C   -1.216724  -0.301501   0.003290
		O   -1.626861  -1.044158   0.873967
		C   -0.006421   0.519007   0.229365
		C    1.172805   0.046380  -0.124924
		H   -1.584873  -0.229603  -0.923435
		H   -0.099167   1.454246   0.905689
		H    1.194447  -1.014506  -0.651981
		H    2.172301   0.526435  -0.277287
*
