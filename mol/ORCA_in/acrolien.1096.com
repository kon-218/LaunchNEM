! B3LYP cc-pVDZ
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	17613
* xyz 0 1
		C   -1.243140  -0.255492  -0.105596
		O   -1.779594  -0.617583  -1.014270
		C    0.075674   0.593165  -0.294060
		C    1.240461   0.060022   0.266540
		H   -1.552578  -0.643050   1.096306
		H    0.019848   1.192641  -1.033288
		H    0.986547  -0.836758   1.092360
		H    2.219558   0.505114  -0.012758
*
