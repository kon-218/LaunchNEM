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

# 	22341
* xyz 0 1
		C   -0.571005  -0.483311  -0.006897
		O   -0.577489  -1.624508  -0.030538
		C    0.581613   0.474743   0.045196
		C    1.862243  -0.160513   0.026586
		H   -1.478820   0.173647   0.211013
		H    0.624511   1.621688  -0.328562
		H    2.021270  -1.198051   0.276864
		H    2.671415   0.460681  -0.495925
*
