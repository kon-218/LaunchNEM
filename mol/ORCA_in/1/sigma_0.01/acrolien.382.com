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

# 	6545
* xyz 0 1
		C   -1.196134  -0.338795  -0.006952
		O   -1.364625  -1.363497   0.564971
		C    0.012875   0.514964   0.174439
		C    1.208539   0.008790  -0.135036
		H   -1.953903   0.071499  -0.872891
		H   -0.043051   1.462833   0.705807
		H    1.186486  -1.016798  -0.459008
		H    2.155642   0.657588   0.029033
*