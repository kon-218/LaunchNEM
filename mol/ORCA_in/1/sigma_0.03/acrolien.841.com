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

# 	6616
* xyz 0 1
		C   -1.150900  -0.365807   0.015042
		O   -2.106274  -0.533481   0.802360
		C    0.054714   0.378951   0.383993
		C    1.193786   0.116425  -0.188699
		H   -1.211336  -0.931918  -1.090892
		H    0.096684   1.111450   1.236040
		H    1.225707  -0.445139  -1.034541
		H    2.017659   0.681485  -0.070410
*