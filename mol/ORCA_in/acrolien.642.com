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

# 	19071
* xyz 0 1
		C   -1.209478  -0.300090   0.066790
		O   -1.696141  -1.203512   0.741267
		C    0.005062   0.406284   0.403352
		C    1.162255   0.042913  -0.164205
		H   -1.595418  -0.141174  -1.069994
		H   -0.131915   1.394564   0.913458
		H    1.350182  -0.756904  -0.792169
		H    2.098235   0.593407  -0.099838
*
