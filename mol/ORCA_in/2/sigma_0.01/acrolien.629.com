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

# 	31369
* xyz 0 1
		C   -0.600839  -0.455361   0.026423
		O   -0.571873  -1.637252  -0.018292
		C    0.620380   0.472039  -0.020381
		C    1.854267  -0.133833   0.015188
		H   -1.627708   0.029482   0.034826
		H    0.459155   1.417162   0.003428
		H    1.938268  -1.250429   0.144532
		H    2.923219   0.420824  -0.156679
*
