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

# 	15251
* xyz 0 1
		C   -1.150366  -0.338850  -0.111250
		O   -1.680937  -1.122134  -0.892312
		C    0.029373   0.455893  -0.321409
		C    1.138461   0.043672   0.212431
		H   -1.560248  -0.268869   1.031452
		H   -0.003310   1.430754  -0.785208
		H    1.263336  -0.891681   0.800582
		H    1.995492   0.704548   0.070600
*
