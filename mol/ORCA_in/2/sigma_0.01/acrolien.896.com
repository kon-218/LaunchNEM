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

# 	625
* xyz 0 1
		C   -1.227252  -0.321110   0.024826
		O   -1.280865  -1.481953   0.508799
		C   -0.016911   0.518713   0.092518
		C    1.229219  -0.008255  -0.117483
		H   -2.061417   0.137692  -0.426857
		H   -0.074195   1.653023   0.223558
		H    1.294807  -1.119146  -0.158931
		H    2.220931   0.585383  -0.096263
*
