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

# 	6507
* xyz 0 1
		C   -1.174734  -0.298230  -0.041457
		O   -1.511090  -1.169146   0.767741
		C   -0.025668   0.540199   0.112939
		C    1.224353   0.033565  -0.175796
		H   -1.727299  -0.187879  -0.856142
		H   -0.231949   1.508765   0.709243
		H    1.291691  -1.020289  -0.544263
		H    2.160380   0.553210   0.029649
*