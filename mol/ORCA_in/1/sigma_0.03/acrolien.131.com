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

# 	10616
* xyz 0 1
		C   -1.180021  -0.290037  -0.032464
		O   -2.148579  -0.402951  -0.742978
		C    0.051962   0.375861  -0.474211
		C    1.264641   0.100690   0.078425
		H   -1.154021  -0.880409   1.093279
		H   -0.136346   0.971846  -1.045857
		H    1.231705  -0.512801   1.130330
		H    2.049374   0.671775  -0.043999
*
