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

# 	11497
* xyz 0 1
		C   -1.170305  -0.420587   0.047831
		O   -2.227192  -0.392129  -0.764534
		C    0.063052   0.341363  -0.368260
		C    1.151107   0.074628   0.228185
		H   -1.125683  -0.958345   0.978861
		H    0.036250   1.051870  -1.194458
		H    1.259707  -0.326601   1.113979
		H    2.016401   0.571715  -0.015136
*