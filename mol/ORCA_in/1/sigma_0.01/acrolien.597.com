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

# 	8682
* xyz 0 1
		C   -1.198377  -0.380538   0.033378
		O   -1.290628  -1.531282  -0.198306
		C    0.005972   0.456660  -0.104823
		C    1.255362   0.018435   0.038459
		H   -2.149927   0.251353   0.174103
		H   -0.122945   1.523863  -0.233684
		H    1.431872  -0.971185   0.313059
		H    2.072187   0.666818  -0.046246
*
