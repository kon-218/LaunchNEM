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

# 	17599
* xyz 0 1
		C   -1.263897  -0.393629  -0.092428
		O   -2.245451  -0.262958  -0.567845
		C   -0.079897   0.376991  -0.254995
		C    1.175722   0.065606   0.287014
		H   -1.104376  -1.090341   0.566267
		H   -0.111526   1.432280  -1.024348
		H    1.373808  -0.707827   1.022062
		H    2.223857   0.616067   0.019102
*