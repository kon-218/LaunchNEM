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

# 	22388
* xyz 0 1
		C   -0.633421  -0.458101  -0.024466
		O   -0.560967  -1.605098   0.011399
		C    0.624968   0.419845   0.024487
		C    1.878334  -0.130650  -0.032526
		H   -1.538840   0.086562  -0.038755
		H    0.424007   1.516738   0.081521
		H    2.014352  -1.314468   0.129906
		H    2.668679   0.460872   0.038286
*