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

# 	1098
* xyz 0 1
		C   -1.232219  -0.386980  -0.043748
		O   -2.144078  -0.404612  -0.790100
		C   -0.000313   0.428053  -0.372580
		C    1.144542   0.041413   0.236230
		H   -1.161673  -0.908078   0.890598
		H   -0.088484   1.299902  -0.919106
		H    1.280894  -0.830423   0.914882
		H    2.153932   0.730646   0.097847
*