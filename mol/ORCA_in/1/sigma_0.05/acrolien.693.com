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

# 	25623
* xyz 0 1
		C   -0.600583  -0.412913   0.032969
		O   -0.544421  -1.646486  -0.024617
		C    0.593497   0.432644  -0.029844
		C    1.852064  -0.128825   0.033932
		H   -1.605265   0.154158   0.227417
		H    0.638159   1.443578  -0.257024
		H    1.758406  -1.323660  -0.077387
		H    2.819168   0.391456   0.044791
*