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

# 	27769
* xyz 0 1
		C   -0.559110  -0.453334  -0.055880
		O   -0.609748  -1.675814   0.017681
		C    0.641018   0.474548   0.024983
		C    1.833764  -0.112785  -0.030272
		H   -1.418990   0.168590   0.162218
		H    0.503842   1.515501   0.076506
		H    2.060133  -1.231788   0.150003
		H    2.705216   0.499239   0.062125
*
