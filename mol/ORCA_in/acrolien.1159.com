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

# 	1157
* xyz 0 1
		C   -1.128205  -0.353629  -0.082732
		O   -2.070810  -0.542046  -0.858404
		C    0.061534   0.339435  -0.430250
		C    1.155910   0.101218   0.278557
		H   -1.387629  -0.885309   1.080352
		H    0.061120   1.279395  -1.292766
		H    1.183213  -0.623082   1.176903
		H    2.077234   0.685006   0.097174
*
