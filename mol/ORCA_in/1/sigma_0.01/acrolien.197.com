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

# 	24198
* xyz 0 1
		C   -0.565687  -0.405052   0.048828
		O   -0.580948  -1.660567  -0.003770
		C    0.612779   0.405459  -0.048761
		C    1.817821  -0.113069  -0.001466
		H   -1.491115   0.184549  -0.139786
		H    0.730622   1.469471   0.106603
		H    1.995942  -1.209045  -0.117480
		H    2.760650   0.512028   0.248519
*