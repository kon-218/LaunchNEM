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

# 	6217
* xyz 0 1
		C   -1.209316  -0.346413   0.042541
		O   -2.075864  -0.641679   0.757368
		C   -0.039078   0.388935   0.320998
		C    1.183946   0.075311  -0.236912
		H   -1.201365  -0.725155  -0.916970
		H   -0.086392   1.213351   1.179584
		H    1.337066  -0.661681  -1.063968
		H    2.081832   0.671136  -0.062715
*
