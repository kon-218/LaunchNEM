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

# 	2058
* xyz 0 1
		C   -1.187537  -0.311933  -0.040068
		O   -2.164202  -0.420555  -0.828609
		C    0.086314   0.373441  -0.387152
		C    1.222414   0.110576   0.194867
		H   -1.256083  -0.833885   0.986153
		H   -0.139865   0.996590  -1.096101
		H    1.201285  -0.598421   1.168029
		H    2.200260   0.689998  -0.007564
*
