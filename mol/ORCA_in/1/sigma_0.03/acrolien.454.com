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

# 	28148
* xyz 0 1
		C   -0.604544  -0.399839   0.003889
		O   -0.567775  -1.613052  -0.012653
		C    0.624376   0.371748   0.022551
		C    1.840742  -0.112513   0.005475
		H   -1.560616  -0.050741   0.015143
		H    0.472240   1.341831  -0.130748
		H    1.945925  -1.161930   0.112872
		H    2.901064   0.382172  -0.194823
*