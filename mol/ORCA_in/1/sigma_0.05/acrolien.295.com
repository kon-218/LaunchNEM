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

# 	29185
* xyz 0 1
		C   -0.583727  -0.453253  -0.012139
		O   -0.604333  -1.636172   0.010526
		C    0.700863   0.434127   0.024369
		C    1.806445  -0.102925   0.006056
		H   -1.551191  -0.031144  -0.096435
		H    0.412573   1.369223  -0.084611
		H    1.949205  -1.067047  -0.219537
		H    2.807094   0.381192   0.017760
*
