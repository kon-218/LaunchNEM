! B3LYP cc-pVDZ
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	29414
* xyz 0 1
		C   -0.624013  -0.461972  -0.061098
		O   -0.564006  -1.636755   0.031320
		C    0.589977   0.443937   0.073285
		C    1.884781  -0.119561  -0.025120
		H   -1.580144   0.214729  -0.167789
		H    0.499695   1.532561  -0.000451
		H    2.048303  -1.300436  -0.130890
		H    2.880964   0.442790  -0.040955
*
