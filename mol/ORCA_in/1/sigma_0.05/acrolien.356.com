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

# 	1021
* xyz 0 1
		C   -1.215398  -0.264095   0.009307
		O   -1.175637  -1.447984  -0.171796
		C    0.009854   0.632220  -0.074313
		C    1.231842   0.075786   0.046269
		H   -2.007587   0.215273   0.196795
		H   -0.130981   1.634323  -0.022678
		H    1.008685  -1.113921   0.134412
		H    2.213028   0.270557  -0.132997
*
