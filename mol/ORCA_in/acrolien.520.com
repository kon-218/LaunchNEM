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

# 	26496
* xyz 0 1
		C   -0.531888  -0.429813  -0.000603
		O   -0.637574  -1.643373  -0.014156
		C    0.651190   0.350247   0.027266
		C    1.854674  -0.085509  -0.014371
		H   -1.587728   0.194890   0.073669
		H    0.482153   1.448326  -0.130980
		H    2.066329  -1.014781   0.251999
		H    2.613896   0.687248  -0.134171
*
