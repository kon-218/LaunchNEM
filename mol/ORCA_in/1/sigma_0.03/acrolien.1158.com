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

# 	32165
* xyz 0 1
		C   -0.580649  -0.435046   0.048712
		O   -0.552253  -1.634859  -0.019704
		C    0.595592   0.455619  -0.013719
		C    1.830247  -0.152553   0.016882
		H   -1.479337   0.126692  -0.151651
		H    0.549750   1.614632  -0.041724
		H    1.912501  -1.285376   0.021944
		H    2.766726   0.323367  -0.141976
*