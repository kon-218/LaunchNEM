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

# 	6056
* xyz 0 1
		C   -1.185078  -0.419303  -0.015395
		O   -1.949242  -0.753734  -0.902046
		C    0.075504   0.430641  -0.323998
		C    1.153429   0.149106   0.256222
		H   -1.457458  -0.566725   1.204799
		H   -0.003402   1.040286  -1.163675
		H    1.293292  -0.657293   0.868068
		H    2.137464   0.765679   0.036821
*