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

# 	5666
* xyz 0 1
		C   -1.171275  -0.362506  -0.020910
		O   -1.240363  -1.511149   0.357882
		C    0.057544   0.474407   0.080090
		C    1.226057  -0.064250  -0.158831
		H   -2.193117   0.177805  -0.202025
		H    0.033866   1.671399   0.178637
		H    1.372536  -1.107817  -0.090371
		H    1.942656   0.714381  -0.087038
*
