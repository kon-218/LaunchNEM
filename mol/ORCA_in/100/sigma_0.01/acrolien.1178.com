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

# 	27319
* xyz 0 1
		C   -0.544691  -0.413466   0.073394
		O   -0.567916  -1.663073  -0.053082
		C    0.617332   0.484687  -0.135674
		C    1.782164  -0.166804   0.063278
		H   -1.442173   0.056134   0.493826
		H    0.537376   1.560435   0.110786
		H    1.936407  -1.197650   0.368198
		H    2.869570   0.369324  -0.159819
*