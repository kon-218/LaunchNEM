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

# 	1121
* xyz 0 1
		C   -1.214265  -0.330674   0.016050
		O   -1.210922  -1.513491   0.196135
		C    0.020746   0.502043   0.140721
		C    1.179976  -0.041605   0.045657
		H   -2.171964   0.287735  -0.302755
		H   -0.086573   1.638502   0.241529
		H    1.385836  -0.939231  -0.210899
		H    2.079396   0.426083  -0.100599
*
