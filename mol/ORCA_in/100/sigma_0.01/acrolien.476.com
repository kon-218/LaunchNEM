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

# 	6208
* xyz 0 1
		C   -1.188563  -0.318796   0.002666
		O   -1.492260  -1.292975   0.644215
		C   -0.006552   0.502004   0.211963
		C    1.212344   0.030868  -0.187290
		H   -1.799807  -0.026399  -0.834355
		H   -0.160481   1.483347   0.770551
		H    1.367009  -0.940297  -0.683387
		H    2.141275   0.594545   0.090979
*
