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

# 	10702
* xyz 0 1
		C   -1.109460  -0.355989  -0.015320
		O   -1.216022  -1.505344   0.197458
		C    0.042867   0.445347   0.084336
		C    1.256552  -0.002994  -0.071935
		H   -2.102021   0.384129  -0.274135
		H   -0.116966   1.594896   0.252654
		H    1.189968  -1.215014  -0.277516
		H    2.046561   0.640557   0.101417
*