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

# 	4245
* xyz 0 1
		C   -1.219920  -0.367512   0.010314
		O   -1.397851  -1.434058   0.491063
		C    0.007720   0.480117   0.074166
		C    1.261810   0.009914  -0.082542
		H   -2.061116   0.011453  -0.535451
		H   -0.108131   1.558589   0.454353
		H    1.451400  -0.920561  -0.276572
		H    2.039515   0.665427  -0.165377
*
