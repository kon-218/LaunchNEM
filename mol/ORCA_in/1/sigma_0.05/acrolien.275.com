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

# 	8770
* xyz 0 1
		C   -1.159426  -0.358905  -0.082544
		O   -1.559980  -1.162379  -0.821586
		C    0.012087   0.538745  -0.223519
		C    1.206227  -0.017895   0.108061
		H   -1.804966  -0.090964   0.946459
		H   -0.033452   1.642742  -0.599425
		H    1.274214  -1.065088   0.626331
		H    2.087277   0.561558   0.072925
*