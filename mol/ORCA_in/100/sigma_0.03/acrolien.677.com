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

# 	4378
* xyz 0 1
		C   -1.125835  -0.394367   0.145725
		O   -2.091764  -0.474068   0.689875
		C    0.024484   0.405767   0.352709
		C    1.293104   0.072611  -0.261450
		H   -1.161440  -0.917672  -0.883477
		H   -0.070182   1.324019   0.911015
		H    1.284320  -0.873565  -0.959628
		H    1.892534   0.866103  -0.053358
*