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

# 	24683
* xyz 0 1
		C   -0.500148  -0.419678   0.050114
		O   -0.612008  -1.647071  -0.009121
		C    0.634382   0.407355  -0.091795
		C    1.804180  -0.128577   0.011403
		H   -1.582856   0.167244   0.074886
		H    0.462611   1.496754   0.198940
		H    2.012124  -1.106119  -0.035634
		H    2.707348   0.531394   0.290447
*
