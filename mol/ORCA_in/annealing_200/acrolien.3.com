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

# 	23270
* xyz 0 1
		C   -0.647792  -0.422857   0.061152
		O   -0.552894  -1.674897  -0.031774
		C    0.613218   0.448656   0.003461
		C    1.881164  -0.128703  -0.035888
		H   -1.723955   0.116855  -0.057070
		H    0.515632   1.712478  -0.194359
		H    2.087333  -1.150718   0.301466
		H    2.859549   0.414176   0.105108
*
