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

# 	722
* xyz 0 1
		C   -1.217114  -0.371734   0.039678
		O   -1.232010  -1.543858  -0.264017
		C    0.021840   0.470518  -0.157912
		C    1.212603  -0.021090   0.030910
		H   -2.168666   0.282142   0.392698
		H    0.014058   1.678897  -0.371884
		H    1.343865  -1.147090   0.290333
		H    2.026423   0.665030   0.064085
*
