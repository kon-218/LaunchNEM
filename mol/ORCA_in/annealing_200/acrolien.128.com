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

# 	19702
* xyz 0 1
		C   -1.209358  -0.378177  -0.009824
		O   -1.323698  -1.509601   0.321730
		C   -0.027138   0.535716   0.120380
		C    1.221121   0.017552  -0.018115
		H   -2.013338   0.210501  -0.498135
		H   -0.015080   1.612296   0.403230
		H    1.267530  -1.169082  -0.428267
		H    2.077440   0.611689   0.092180
*
