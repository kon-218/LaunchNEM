! B3LYP cc-pVDZ
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	16540
* xyz 0 1
		C   -1.168837  -0.337009  -0.007180
		O   -1.154625  -1.520188  -0.035770
		C    0.031267   0.540373  -0.054497
		C    1.225270  -0.023229  -0.071037
		H   -2.241508   0.226199  -0.026592
		H   -0.010612   1.574421  -0.110237
		H    1.255247  -1.102852   0.220804
		H    2.032167   0.603489   0.074889
*
