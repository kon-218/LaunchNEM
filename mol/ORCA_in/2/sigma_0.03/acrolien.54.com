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

# 	27306
* xyz 0 1
		C   -0.607874  -0.421204   0.000245
		O   -0.521574  -1.582157  -0.016240
		C    0.613448   0.422921   0.006207
		C    1.792874  -0.176396  -0.020026
		H   -1.494100  -0.057463   0.275703
		H    0.576337   1.465184  -0.211173
		H    1.832911  -1.241241   0.222556
		H    2.869202   0.258647   0.122488
*