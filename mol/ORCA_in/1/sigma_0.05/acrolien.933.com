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

# 	27987
* xyz 0 1
		C   -0.615262  -0.419356   0.002176
		O   -0.603549  -1.669827   0.010231
		C    0.624214   0.409486  -0.026021
		C    1.887848  -0.072285   0.023362
		H   -1.527931  -0.049574  -0.084812
		H    0.576422   1.468898   0.143393
		H    2.054565  -1.180246  -0.209247
		H    2.841747   0.473998   0.004796
*
