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

# 	32172
* xyz 0 1
		C   -0.598925  -0.431541  -0.040533
		O   -0.523843  -1.590969   0.024698
		C    0.641851   0.424779  -0.059564
		C    1.788009  -0.177766   0.027777
		H   -1.521937   0.193210   0.255004
		H    0.286355   1.579170   0.272267
		H    1.921990  -1.297804  -0.218854
		H    2.739340   0.269315   0.182669
*
