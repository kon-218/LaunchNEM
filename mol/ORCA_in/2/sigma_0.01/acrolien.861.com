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

# 	7683
* xyz 0 1
		C   -1.135292  -0.248709  -0.075090
		O   -1.168484  -1.428809   0.251956
		C   -0.004671   0.575221   0.070407
		C    1.189564  -0.070812  -0.136923
		H   -2.084970   0.140863  -0.346809
		H   -0.108019   1.617387   0.254197
		H    1.109854  -1.133991  -0.103798
		H    2.156440   0.589230   0.033570
*