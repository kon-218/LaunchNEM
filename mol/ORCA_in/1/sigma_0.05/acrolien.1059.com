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

# 	31659
* xyz 0 1
		C   -0.560036  -0.440628  -0.035001
		O   -0.619038  -1.676960   0.005837
		C    0.655432   0.456018   0.026295
		C    1.882979  -0.106577   0.022627
		H   -1.490746  -0.006330   0.074328
		H    0.381540   1.575804  -0.059059
		H    1.787860  -1.291938  -0.060684
		H    2.572341   0.641993  -0.227829
*
