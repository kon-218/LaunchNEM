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

# 	25189
* xyz 0 1
		C   -0.655348  -0.409939   0.069133
		O   -0.540444  -1.600859  -0.034202
		C    0.645820   0.355145  -0.055979
		C    1.846950  -0.095012   0.016192
		H   -1.617468  -0.150376   0.064940
		H    0.565095   1.484283  -0.041836
		H    1.715154  -1.302862   0.164831
		H    2.953788   0.364544  -0.000779
*