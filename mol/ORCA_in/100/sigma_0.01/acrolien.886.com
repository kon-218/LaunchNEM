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

# 	11127
* xyz 0 1
		C   -1.213107  -0.329350  -0.000063
		O   -1.501693  -1.220835   0.706442
		C    0.033858   0.517873   0.117927
		C    1.191067   0.025519  -0.180510
		H   -1.748408  -0.122377  -0.872602
		H   -0.098785   1.480223   0.689392
		H    1.241713  -0.938210  -0.457905
		H    2.087859   0.643009  -0.041945
*
