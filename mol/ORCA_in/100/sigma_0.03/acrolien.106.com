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

# 	6596
* xyz 0 1
		C   -1.241433  -0.381844   0.078299
		O   -2.000637  -0.761767   0.833328
		C    0.069794   0.360070   0.318232
		C    1.247897   0.096345  -0.264755
		H   -1.404068  -0.534227  -1.056895
		H   -0.087411   1.125331   0.933362
		H    1.324108  -0.682803  -0.882241
		H    2.095644   0.705452   0.000872
*