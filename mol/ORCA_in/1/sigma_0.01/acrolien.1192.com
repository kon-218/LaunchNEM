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

# 	8751
* xyz 0 1
		C   -1.167872  -0.305096  -0.015900
		O   -1.757782  -0.937524   0.906878
		C   -0.017748   0.536582   0.160478
		C    1.194303   0.098162  -0.112158
		H   -1.553529  -0.465249  -1.080722
		H   -0.145617   1.425389   0.781287
		H    1.292240  -0.939566  -0.673056
		H    2.170832   0.683966  -0.009553
*