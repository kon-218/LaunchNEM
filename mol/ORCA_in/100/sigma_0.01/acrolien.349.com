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

# 	14101
* xyz 0 1
		C   -1.134663  -0.312120  -0.081546
		O   -1.200313  -1.533435   0.217752
		C   -0.014736   0.572513   0.108227
		C    1.238447  -0.074191  -0.065416
		H   -2.115265   0.279212  -0.403843
		H   -0.117589   1.606838   0.477491
		H    1.287749  -1.124460  -0.187956
		H    2.113631   0.634632  -0.060144
*
