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

# 	22145
* xyz 0 1
		C   -0.571215  -0.412505  -0.044049
		O   -0.570103  -1.632137   0.028560
		C    0.638804   0.390661   0.022137
		C    1.785737  -0.103190   0.005792
		H   -1.549587   0.120892  -0.112636
		H    0.539934   1.494902   0.126747
		H    2.038306  -1.246828  -0.230980
		H    2.898345   0.297157  -0.035196
*