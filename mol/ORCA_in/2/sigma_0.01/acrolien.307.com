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

# 	25939
* xyz 0 1
		C   -0.620708  -0.465190   0.082701
		O   -0.581383  -1.641001  -0.047470
		C    0.586501   0.434719   0.023506
		C    1.908848  -0.109744  -0.008186
		H   -1.640631   0.276579  -0.143338
		H    0.499359   1.448794  -0.393189
		H    2.182985  -1.174552   0.231611
		H    2.782802   0.451083  -0.136046
*
