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

# 	21792
* xyz 0 1
		C   -0.593818  -0.472414   0.000979
		O   -0.596047  -1.635551  -0.005916
		C    0.651532   0.435614   0.003247
		C    1.844104  -0.119452  -0.009282
		H   -1.450820   0.149045   0.055898
		H    0.677752   1.499100  -0.023115
		H    1.994376  -1.075086   0.132385
		H    2.566641   0.493237  -0.015663
*