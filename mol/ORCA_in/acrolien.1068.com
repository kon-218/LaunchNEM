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

# 	8844
* xyz 0 1
		C   -1.186183  -0.387043   0.068274
		O   -1.384114  -1.450986   0.465727
		C   -0.010606   0.445738   0.143651
		C    1.191315  -0.000663  -0.088849
		H   -2.092739   0.033340  -0.607593
		H    0.009790   1.530702   0.292336
		H    1.413204  -1.017042  -0.205186
		H    2.038302   0.800659  -0.034532
*
