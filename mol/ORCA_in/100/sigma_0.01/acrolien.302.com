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

# 	24425
* xyz 0 1
		C   -0.564198  -0.406906   0.049495
		O   -0.585221  -1.634275  -0.038246
		C    0.603893   0.426189  -0.044036
		C    1.867869  -0.134506   0.015297
		H   -1.488542   0.005115   0.218520
		H    0.354746   1.344601  -0.083755
		H    1.928562  -1.315121   0.319908
		H    2.703096   0.514106  -0.113260
*
