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

# 	6912
* xyz 0 1
		C   -1.253721  -0.298694   0.081991
		O   -1.934816  -0.696542   0.873702
		C    0.003642   0.475355   0.272765
		C    1.206679   0.066948  -0.167921
		H   -1.312781  -0.694112  -1.069259
		H   -0.046110   1.289091   0.931725
		H    1.152637  -0.789419  -0.980583
		H    2.124503   0.598479   0.126161
*
