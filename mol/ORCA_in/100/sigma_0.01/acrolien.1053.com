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

# 	14380
* xyz 0 1
		C   -1.279973  -0.333565   0.012237
		O   -1.204034  -1.546961  -0.023266
		C    0.056824   0.513306   0.007166
		C    1.225944  -0.015648  -0.010347
		H   -2.237538  -0.043941  -0.070530
		H   -0.073648   1.737733   0.044545
		H    1.314861  -0.867000   0.088866
		H    2.218982   0.521736  -0.079244
*
