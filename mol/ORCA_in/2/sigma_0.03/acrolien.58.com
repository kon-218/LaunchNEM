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

# 	29001
* xyz 0 1
		C   -0.547847  -0.435255   0.004717
		O   -0.555614  -1.622378   0.002119
		C    0.638822   0.481179  -0.009181
		C    1.796642  -0.173417  -0.002431
		H   -1.562186   0.034814   0.006121
		H    0.398709   1.425278  -0.004758
		H    1.700113  -1.362312  -0.067365
		H    2.747291   0.395710   0.121739
*