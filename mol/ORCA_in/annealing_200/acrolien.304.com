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

# 	19271
* xyz 0 1
		C   -1.184940  -0.304792   0.029755
		O   -1.691195  -0.981477   0.943110
		C    0.037281   0.476177   0.273249
		C    1.192732   0.005703  -0.162365
		H   -1.597178  -0.321087  -1.009500
		H   -0.121419   1.345747   0.902051
		H    1.161585  -0.859453  -0.825628
		H    2.188701   0.610800  -0.181914
*
