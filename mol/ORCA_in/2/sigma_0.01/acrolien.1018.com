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

# 	6050
* xyz 0 1
		C   -1.210877  -0.423688   0.038189
		O   -1.542682  -1.336250  -0.707170
		C    0.034825   0.428714  -0.189032
		C    1.206274   0.020320   0.141756
		H   -1.925334   0.019962   0.906450
		H   -0.134783   1.421768  -0.736413
		H    1.453252  -0.921180   0.504194
		H    2.118468   0.689015  -0.013960
*
