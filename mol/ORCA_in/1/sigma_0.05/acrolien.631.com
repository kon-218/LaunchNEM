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

# 	15731
* xyz 0 1
		C   -1.261660  -0.303869  -0.035281
		O   -1.704687  -1.101871   0.830066
		C   -0.012663   0.520164   0.153616
		C    1.154728   0.078634  -0.169918
		H   -1.638807  -0.242975  -0.935287
		H   -0.054538   1.462793   0.673551
		H    1.373673  -0.945243  -0.550693
		H    2.160438   0.512034   0.000146
*