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

# 	12453
* xyz 0 1
		C   -1.179884  -0.397534   0.020808
		O   -2.058764  -0.635910   0.878921
		C   -0.009680   0.382743   0.310956
		C    1.196857   0.102085  -0.259340
		H   -1.239666  -0.773146  -1.008873
		H    0.038958   1.275781   1.150755
		H    1.157039  -0.540458  -1.186776
		H    2.060990   0.590504   0.032505
*
