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

# 	13668
* xyz 0 1
		C   -1.193713  -0.279572   0.038151
		O   -1.532045  -1.182402  -0.721894
		C   -0.043587   0.514594  -0.212406
		C    1.231338   0.001376   0.108967
		H   -1.754868  -0.003564   0.926801
		H   -0.126223   1.458819  -0.673583
		H    1.280340  -1.002789   0.541671
		H    2.107196   0.517116  -0.017981
*
