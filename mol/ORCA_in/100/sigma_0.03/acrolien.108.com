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

# 	17412
* xyz 0 1
		C   -1.201453  -0.369978  -0.031690
		O   -1.649818  -1.074524  -0.828214
		C   -0.007222   0.430718  -0.239104
		C    1.244079   0.010497   0.211300
		H   -1.779244  -0.085694   0.911349
		H   -0.109328   1.571977  -0.691402
		H    1.425274  -1.020915   0.588579
		H    2.035281   0.551270   0.060965
*
