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

# 	25104
* xyz 0 1
		C   -0.582699  -0.430384   0.049162
		O   -0.630033  -1.655561  -0.021630
		C    0.711578   0.343280  -0.078613
		C    1.838248  -0.044007   0.016047
		H   -1.595483   0.220377   0.224562
		H    0.406410   1.386071   0.010930
		H    2.053879  -1.086518   0.043455
		H    2.655734   0.589272   0.232501
*
