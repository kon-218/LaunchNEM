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

# 	22633
* xyz 0 1
		C   -0.570068  -0.449666   0.006431
		O   -0.626653  -1.670215  -0.011639
		C    0.629309   0.434362  -0.036169
		C    1.905448  -0.071473   0.006338
		H   -1.630372  -0.017653   0.252407
		H    0.416846   1.566912   0.007170
		H    2.019716  -1.343169   0.139251
		H    2.719417   0.571832   0.062466
*