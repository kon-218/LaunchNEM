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

# 	22951
* xyz 0 1
		C   -0.532203  -0.427608  -0.064263
		O   -0.610982  -1.642408   0.037933
		C    0.637786   0.367996   0.103970
		C    1.846823  -0.101819  -0.043296
		H   -1.532850   0.212416  -0.269027
		H    0.568207   1.551100  -0.129430
		H    1.848660  -1.009417  -0.249262
		H    2.523066   0.485885   0.096527
*
