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

# 	7025
* xyz 0 1
		C   -1.169510  -0.387136   0.036636
		O   -1.363613  -1.476854   0.560872
		C   -0.004348   0.479212   0.103911
		C    1.221104   0.019515  -0.196244
		H   -2.044597   0.105496  -0.630403
		H    0.144998   1.656169   0.469216
		H    1.233027  -0.963111  -0.432168
		H    2.001759   0.548642   0.093505
*
