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

# 	14361
* xyz 0 1
		C   -1.149396  -0.376240  -0.068089
		O   -1.249679  -1.579906   0.085570
		C   -0.046791   0.501841   0.038091
		C    1.192363  -0.070297  -0.072152
		H   -2.230096   0.205245   0.004098
		H   -0.084038   1.635668   0.163269
		H    1.423917  -1.033070  -0.166004
		H    2.136479   0.651205   0.023507
*
