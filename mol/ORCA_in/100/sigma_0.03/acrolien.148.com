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

# 	1967
* xyz 0 1
		C   -1.148613  -0.285226  -0.011351
		O   -1.476136  -1.383350   0.619074
		C    0.012329   0.523575   0.188984
		C    1.218187  -0.019156  -0.131608
		H   -1.827628   0.185906  -0.873688
		H   -0.202694   1.399347   0.731213
		H    1.173622  -1.023226  -0.536542
		H    2.220480   0.534520   0.095433
*
