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

# 	32504
* xyz 0 1
		C   -0.554874  -0.441342   0.011435
		O   -0.554353  -1.593531  -0.007397
		C    0.626611   0.407998  -0.017976
		C    1.802570  -0.143651   0.036710
		H   -1.470837   0.105785   0.063228
		H    0.514212   1.525330  -0.080144
		H    1.684702  -1.266690  -0.153296
		H    2.685658   0.266903  -0.078420
*