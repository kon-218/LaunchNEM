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

# 	18821
* xyz 0 1
		C   -1.205501  -0.342659  -0.006684
		O   -1.246160  -1.569027  -0.229050
		C    0.052226   0.552584  -0.148269
		C    1.232959   0.012137  -0.003893
		H   -2.144347   0.185339   0.436000
		H   -0.146323   1.590492  -0.181074
		H    1.255145  -1.013479   0.196224
		H    2.202958   0.512661  -0.079791
*