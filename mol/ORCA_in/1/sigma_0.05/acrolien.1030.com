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

# 	7551
* xyz 0 1
		C   -1.200173  -0.406284   0.008873
		O   -1.860869  -0.915686  -0.874469
		C    0.058894   0.373352  -0.242828
		C    1.209862   0.084677   0.173879
		H   -1.490975  -0.511785   1.128995
		H   -0.156861   1.324407  -1.017881
		H    1.386236  -0.734006   0.857839
		H    2.041675   0.761346  -0.089345
*