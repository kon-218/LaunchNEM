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

# 	26811
* xyz 0 1
		C   -0.599021  -0.418966  -0.012251
		O   -0.522253  -1.611644   0.006280
		C    0.564173   0.458883   0.000808
		C    1.851968  -0.184134   0.008253
		H   -1.502693   0.024014   0.000145
		H    0.393654   1.492333   0.040324
		H    1.667090  -1.308247  -0.060550
		H    2.989506   0.314386  -0.041054
*
