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

# 	9337
* xyz 0 1
		C   -1.214728  -0.417399   0.114012
		O   -2.126375  -0.449137   0.873307
		C    0.084303   0.342461   0.359085
		C    1.113435   0.139635  -0.260136
		H   -1.339020  -0.752331  -0.982056
		H    0.056114   1.168610   1.025283
		H    1.186479  -0.607849  -0.971590
		H    2.175325   0.605074  -0.140860
*