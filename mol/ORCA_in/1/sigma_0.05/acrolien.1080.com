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

# 	11585
* xyz 0 1
		C   -1.233907  -0.342583  -0.017802
		O   -1.331072  -1.339469  -0.586847
		C    0.073231   0.538636  -0.098952
		C    1.247519   0.030139   0.096513
		H   -2.020326   0.031902   0.604739
		H   -0.120924   1.455470  -0.465166
		H    1.269262  -1.079502   0.442022
		H    2.173680   0.641132   0.029948
*
