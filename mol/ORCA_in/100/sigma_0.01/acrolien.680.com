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

# 	9117
* xyz 0 1
		C   -1.232174  -0.453852   0.039717
		O   -2.158459  -0.748458  -0.729674
		C    0.042471   0.315689  -0.413365
		C    1.127410   0.212818   0.207027
		H   -1.082854  -0.676658   0.952534
		H   -0.132645   1.297851  -1.076227
		H    1.288538  -0.709088   0.816300
		H    2.102576   0.719435   0.159009
*
