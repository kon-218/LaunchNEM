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

# 	6485
* xyz 0 1
		C   -1.149470  -0.238467  -0.005013
		O   -1.377256  -1.394180   0.557388
		C    0.012072   0.478915   0.168377
		C    1.217249   0.085750  -0.129575
		H   -1.987924   0.040276  -0.710453
		H    0.005059   1.614798   0.458390
		H    1.130195  -1.164625  -0.285835
		H    2.178956   0.546017  -0.108137
*