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

# 	24901
* xyz 0 1
		C   -0.566980  -0.414949  -0.029377
		O   -0.585622  -1.643286   0.010599
		C    0.611714   0.392916   0.025406
		C    1.843086  -0.100590  -0.015428
		H   -1.617804   0.110197   0.023380
		H    0.489118   1.498842   0.001319
		H    2.011961  -1.238913   0.029736
		H    2.874991   0.433989   0.008552
*
