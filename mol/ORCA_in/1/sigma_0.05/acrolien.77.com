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

# 	1033
* xyz 0 1
		C   -1.192096  -0.263477  -0.013912
		O   -1.806230  -0.682825  -0.974778
		C    0.029046   0.504831  -0.209572
		C    1.196124   0.055067   0.224046
		H   -1.526247  -0.505186   1.078205
		H    0.039267   1.376781  -0.835379
		H    1.114414  -0.963308   0.811369
		H    2.097511   0.458931  -0.047735
*
