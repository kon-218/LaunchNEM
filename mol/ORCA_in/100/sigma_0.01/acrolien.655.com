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

# 	24936
* xyz 0 1
		C   -0.603889  -0.426330  -0.043145
		O   -0.576571  -1.593032   0.011933
		C    0.632545   0.368639   0.039212
		C    1.843968  -0.136318   0.003494
		H   -1.682281  -0.002973   0.103995
		H    0.459424   1.469998  -0.149638
		H    2.268299  -1.089978  -0.124358
		H    2.735845   0.502665  -0.021050
*
