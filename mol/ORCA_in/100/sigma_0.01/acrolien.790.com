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

# 	21367
* xyz 0 1
		C   -0.565499  -0.431454   0.027803
		O   -0.564199  -1.596584  -0.033630
		C    0.628752   0.396677  -0.022843
		C    1.800525  -0.164462   0.004112
		H   -1.483075   0.212880   0.230055
		H    0.441430   1.367631  -0.054241
		H    1.932403  -1.126278   0.430426
		H    2.792470   0.528808  -0.204052
*
