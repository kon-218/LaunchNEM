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

# 	25035
* xyz 0 1
		C   -0.519862  -0.405143   0.015246
		O   -0.579786  -1.680088  -0.019088
		C    0.575652   0.470866  -0.015113
		C    1.814141  -0.143423   0.016945
		H   -1.439002   0.195930   0.162862
		H    0.606262   1.565620  -0.095521
		H    1.977971  -1.349210   0.127702
		H    2.784330   0.445988  -0.110184
*
