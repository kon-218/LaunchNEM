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

# 	28062
* xyz 0 1
		C   -0.601423  -0.462575   0.043483
		O   -0.607071  -1.631837  -0.025411
		C    0.647964   0.402280  -0.038183
		C    1.881968  -0.059522   0.019436
		H   -1.467831   0.036179   0.135268
		H    0.515014   1.312249  -0.118169
		H    1.770354  -1.172721   0.058578
		H    2.763443   0.348787   0.025794
*