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

# 	5715
* xyz 0 1
		C   -1.120252  -0.361708  -0.053398
		O   -1.911935  -0.703313  -0.928207
		C    0.073451   0.429015  -0.233928
		C    1.203856   0.168861   0.282977
		H   -1.325312  -0.585495   1.061580
		H   -0.123369   1.305144  -0.878612
		H    1.305162  -0.846376   0.866798
		H    1.919296   0.594612  -0.140316
*
