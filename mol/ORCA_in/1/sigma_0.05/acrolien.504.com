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

# 	29942
* xyz 0 1
		C   -0.580196  -0.411478  -0.102584
		O   -0.595126  -1.667693   0.059344
		C    0.610623   0.419892   0.077063
		C    1.870059  -0.090087  -0.049226
		H   -1.650476   0.083564  -0.255174
		H    0.393249   1.400777   0.320426
		H    2.036018  -1.167169  -0.088898
		H    2.948841   0.379776  -0.007876
*