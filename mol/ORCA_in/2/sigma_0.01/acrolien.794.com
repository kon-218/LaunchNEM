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

# 	17113
* xyz 0 1
		C   -1.193856  -0.374255  -0.000354
		O   -1.857281  -0.979592  -0.851221
		C   -0.014090   0.402214  -0.366260
		C    1.197432   0.128821   0.137010
		H   -1.489556  -0.421614   1.075542
		H   -0.149289   1.247359  -0.954359
		H    1.262175  -0.771597   0.951440
		H    2.294413   0.740628  -0.062457
*
