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

# 	23656
* xyz 0 1
		C   -0.547506  -0.448623   0.011270
		O   -0.584730  -1.654452   0.010480
		C    0.592915   0.434318  -0.052535
		C    1.855407  -0.133660   0.021086
		H   -1.539106   0.302612   0.005106
		H    0.511964   1.654240   0.141299
		H    1.863053  -1.204925  -0.277008
		H    2.779410   0.537455   0.226905
*
