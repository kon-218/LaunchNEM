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

# 	23874
* xyz 0 1
		C   -0.554439  -0.432298   0.033273
		O   -0.570555  -1.603830  -0.009036
		C    0.604962   0.380547  -0.030730
		C    1.803597  -0.137246   0.008170
		H   -1.265608   0.293585  -0.087535
		H    0.536985   1.520348   0.097901
		H    1.998396  -1.288444   0.031481
		H    2.667187   0.467442  -0.022593
*