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

# 	5011
* xyz 0 1
		C   -1.179358  -0.365827   0.021372
		O   -1.663034  -1.185697   0.814703
		C   -0.022214   0.478620   0.248616
		C    1.268992   0.088207  -0.178465
		H   -1.784568  -0.102235  -0.925000
		H   -0.230558   1.314041   0.710991
		H    1.405225  -0.942090  -0.653454
		H    2.164575   0.724703  -0.062281
*
