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

# 	18262
* xyz 0 1
		C   -1.212030  -0.333945  -0.000749
		O   -1.330289  -1.520101   0.281468
		C    0.027827   0.522416   0.129463
		C    1.217694   0.037255  -0.066881
		H   -2.060924   0.069728  -0.660662
		H   -0.094013   1.557251   0.349654
		H    1.451357  -1.048368  -0.180764
		H    1.954002   0.733149   0.157948
*
