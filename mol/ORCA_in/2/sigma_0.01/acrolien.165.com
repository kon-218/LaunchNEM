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

# 	12783
* xyz 0 1
		C   -1.156803  -0.315568   0.049597
		O   -1.219180  -1.492691  -0.097385
		C    0.021226   0.495255  -0.025715
		C    1.287276  -0.036468   0.078132
		H   -2.211592   0.258750   0.022082
		H   -0.157506   1.610218  -0.066270
		H    1.405446  -1.160498   0.090306
		H    2.095566   0.653485  -0.008246
*
