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

# 	1041
* xyz 0 1
		C   -1.228288  -0.340940  -0.106317
		O   -1.215194  -1.531675   0.143915
		C    0.051343   0.454612   0.062934
		C    1.221146   0.030729  -0.071208
		H   -2.127513   0.356466  -0.399817
		H   -0.229654   1.578639   0.528048
		H    1.421963  -1.099239  -0.306560
		H    2.070297   0.573809   0.095144
*