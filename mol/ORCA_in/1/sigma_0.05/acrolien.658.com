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

# 	11367
* xyz 0 1
		C   -1.148495  -0.333409  -0.070391
		O   -1.522986  -1.167878   0.748716
		C   -0.026695   0.569443   0.120860
		C    1.225645   0.034381  -0.135975
		H   -1.828086  -0.219587  -0.872425
		H   -0.190341   1.576883   0.680147
		H    1.332964  -1.044237  -0.554304
		H    2.099819   0.604601   0.064853
*