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

# 	29721
* xyz 0 1
		C   -0.564181  -0.423273  -0.039582
		O   -0.612633  -1.654116   0.017879
		C    0.615854   0.395185   0.005917
		C    1.883680  -0.106606   0.015584
		H   -1.547369   0.342828   0.074038
		H    0.183284   1.360032   0.049853
		H    2.200815  -1.063963  -0.168420
		H    2.733785   0.529714  -0.021020
*