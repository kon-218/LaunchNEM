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

# 	2447
* xyz 0 1
		C   -1.199633  -0.221069   0.059068
		O   -1.428696  -1.153870   0.763628
		C    0.021523   0.572426   0.104120
		C    1.231907  -0.012474  -0.160956
		H   -1.851350  -0.225200  -0.826239
		H   -0.103361   1.656087   0.403749
		H    1.204025  -1.148809  -0.291223
		H    2.149559   0.519085  -0.019944
*
