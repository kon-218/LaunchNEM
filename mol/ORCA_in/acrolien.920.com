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

# 	17145
* xyz 0 1
		C   -1.175978  -0.285199   0.001756
		O   -1.219189  -1.548214   0.099468
		C   -0.011088   0.552855   0.084422
		C    1.236168  -0.013429  -0.077649
		H   -2.202039   0.195588  -0.059125
		H   -0.162574   1.683631   0.135805
		H    1.278677  -1.109197  -0.141414
		H    2.194358   0.555226  -0.000236
*
