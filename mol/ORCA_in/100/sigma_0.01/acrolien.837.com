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

# 	23761
* xyz 0 1
		C   -0.601699  -0.408456  -0.003971
		O   -0.554757  -1.623884  -0.003254
		C    0.640554   0.421621   0.024375
		C    1.815263  -0.174145   0.008445
		H   -1.612083   0.151702  -0.012039
		H    0.380674   1.412655  -0.140622
		H    2.133606  -1.165676  -0.050257
		H    2.757213   0.588722  -0.099664
*
