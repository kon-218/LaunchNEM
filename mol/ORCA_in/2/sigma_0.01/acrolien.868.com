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

# 	20788
* xyz 0 1
		C   -0.606345  -0.415152  -0.016074
		O   -0.530495  -1.607723   0.013585
		C    0.612446   0.393345   0.007976
		C    1.817396  -0.146480  -0.014136
		H   -1.514156   0.128886  -0.139180
		H    0.553544   1.577542   0.202678
		H    1.787951  -1.318486   0.057243
		H    2.820344   0.387802  -0.064728
*