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

# 	32159
* xyz 0 1
		C   -0.611945  -0.480654   0.016488
		O   -0.588301  -1.648260  -0.023826
		C    0.658738   0.423635  -0.012705
		C    1.831830  -0.105875   0.002825
		H   -1.471589   0.395631   0.238191
		H    0.636955   1.554561  -0.146052
		H    2.083451  -1.100439   0.231704
		H    2.694443   0.543199  -0.040092
*
