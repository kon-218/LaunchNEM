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

# 	6866
* xyz 0 1
		C   -1.167229  -0.290460  -0.002372
		O   -1.484996  -1.231437  -0.751291
		C    0.018242   0.520289  -0.216363
		C    1.224138  -0.011790   0.125360
		H   -1.820093   0.001975   0.873509
		H   -0.142756   1.397311  -0.642895
		H    1.292778  -0.983013   0.560138
		H    2.109474   0.663441   0.102865
*
