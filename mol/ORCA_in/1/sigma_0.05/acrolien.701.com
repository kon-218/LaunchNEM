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

# 	26498
* xyz 0 1
		C   -0.549679  -0.418916   0.011296
		O   -0.594895  -1.602043  -0.005725
		C    0.622964   0.334066  -0.060444
		C    1.822845  -0.095744   0.027210
		H   -1.527034   0.114134   0.262568
		H    0.574986   1.407484   0.018433
		H    1.999352  -1.106212  -0.101211
		H    2.747722   0.416705   0.180370
*
