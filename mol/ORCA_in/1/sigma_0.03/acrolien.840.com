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

# 	28541
* xyz 0 1
		C   -0.546424  -0.422646  -0.034583
		O   -0.656898  -1.689377   0.013071
		C    0.652307   0.376250   0.111849
		C    1.851167  -0.044570  -0.056125
		H   -1.453458   0.129207  -0.346732
		H    0.608957   1.492777  -0.091081
		H    2.272413  -1.106272   0.181937
		H    2.697165   0.652346  -0.216081
*
