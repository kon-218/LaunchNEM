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

# 	18284
* xyz 0 1
		C   -1.237865  -0.378601   0.005968
		O   -1.412833  -1.536618  -0.340376
		C   -0.015609   0.463946  -0.187556
		C    1.198975   0.021073   0.003339
		H   -2.047265   0.206260   0.347053
		H   -0.196356   1.514577  -0.365436
		H    1.439208  -0.919792   0.430717
		H    2.194872   0.642597   0.066182
*