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

# 	15842
* xyz 0 1
		C   -1.196041  -0.254337  -0.034794
		O   -1.288421  -1.402227   0.316746
		C   -0.041035   0.589603   0.075188
		C    1.184824   0.002834  -0.105073
		H   -2.083986   0.039451  -0.494164
		H    0.058567   1.627449   0.231566
		H    1.342954  -1.085068   0.031641
		H    2.017076   0.514638   0.020929
*
