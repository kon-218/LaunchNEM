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

# 	11527
* xyz 0 1
		C   -1.230113  -0.319608  -0.028964
		O   -1.625537  -1.232511   0.756738
		C    0.023101   0.451023   0.169701
		C    1.207867   0.060397  -0.134897
		H   -1.794133  -0.115381  -1.049333
		H   -0.039101   1.377300   0.873994
		H    1.488675  -0.876255  -0.592221
		H    1.948619   0.627600  -0.034901
*
