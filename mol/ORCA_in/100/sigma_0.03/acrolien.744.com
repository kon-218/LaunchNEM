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

# 	32343
* xyz 0 1
		C   -0.593094  -0.469084  -0.010284
		O   -0.580846  -1.654554  -0.001106
		C    0.624832   0.449322  -0.012478
		C    1.823405  -0.108520  -0.007492
		H   -1.419174   0.315551   0.147838
		H    0.477731   1.570868   0.056850
		H    2.027811  -1.147412   0.140902
		H    2.983536   0.333446   0.032457
*