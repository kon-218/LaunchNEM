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

# 	12788
* xyz 0 1
		C   -1.125612  -0.343454  -0.036948
		O   -1.367449  -1.373163  -0.476750
		C    0.021504   0.476180  -0.175616
		C    1.254410   0.021379   0.143845
		H   -2.078986   0.154071   0.540240
		H   -0.184185   1.567978  -0.373321
		H    1.409934  -1.158281   0.323174
		H    2.051599   0.677434   0.037982
*