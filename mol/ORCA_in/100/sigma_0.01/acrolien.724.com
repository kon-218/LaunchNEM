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

# 	22989
* xyz 0 1
		C   -0.572995  -0.429461  -0.083311
		O   -0.592194  -1.670337   0.052724
		C    0.648747   0.430767   0.042068
		C    1.837097  -0.105468  -0.032897
		H   -1.551370   0.218766  -0.147447
		H    0.480804   1.514382   0.279810
		H    1.943658  -1.163753  -0.192929
		H    2.704268   0.447370   0.132391
*