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

# 	4179
* xyz 0 1
		C   -1.147497  -0.322957   0.038151
		O   -2.229206  -0.213116   0.650346
		C    0.036468   0.454635   0.417086
		C    1.139958   0.112852  -0.256387
		H   -1.111357  -1.201885  -0.894489
		H   -0.031314   1.227068   1.277735
		H    0.971825  -0.723100  -1.233654
		H    2.292627   0.687863  -0.060939
*
