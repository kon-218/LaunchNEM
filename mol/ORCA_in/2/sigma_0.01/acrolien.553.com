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

# 	18194
* xyz 0 1
		C   -1.222523  -0.305918   0.001792
		O   -1.913344  -0.772072  -0.884313
		C    0.014921   0.464563  -0.222742
		C    1.192651  -0.017105   0.100595
		H   -1.578563  -0.515708   1.103195
		H    0.075372   1.313501  -1.054332
		H    1.430408  -0.781183   0.765032
		H    2.041597   0.557410   0.104226
*