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

# 	22679
* xyz 0 1
		C   -0.585545  -0.434609   0.036467
		O   -0.552771  -1.626094  -0.023557
		C    0.619063   0.461010  -0.035867
		C    1.834285  -0.157978   0.022231
		H   -1.490061   0.039067   0.239399
		H    0.525428   1.540120  -0.244153
		H    1.830380  -1.380191  -0.060947
		H    2.629499   0.415172   0.162650
*
