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

# 	2421
* xyz 0 1
		C   -1.196478  -0.305619   0.009976
		O   -1.214461  -1.471306   0.183055
		C   -0.008614   0.539328   0.089736
		C    1.207445  -0.031511  -0.039434
		H   -2.157365   0.185757  -0.406342
		H   -0.068560   1.548877   0.315234
		H    1.431602  -1.087141  -0.129351
		H    2.083833   0.652116  -0.033342
*
