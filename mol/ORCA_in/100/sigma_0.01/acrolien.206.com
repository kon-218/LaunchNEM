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

# 	14961
* xyz 0 1
		C   -1.159351  -0.326548  -0.014155
		O   -1.124044  -1.526697  -0.137299
		C    0.025450   0.570473  -0.048118
		C    1.202821  -0.084343   0.066853
		H   -2.211992   0.382486   0.131354
		H   -0.050914   1.575281  -0.057299
		H    1.256570  -1.193592   0.022420
		H    2.117695   0.557609   0.002279
*
