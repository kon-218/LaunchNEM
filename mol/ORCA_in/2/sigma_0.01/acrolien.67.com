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

# 	21735
* xyz 0 1
		C   -0.623783  -0.436494  -0.081554
		O   -0.572919  -1.651541   0.049379
		C    0.680370   0.449621   0.047254
		C    1.858816  -0.123378   0.014985
		H   -1.676215   0.098798  -0.184384
		H    0.316960   1.433007   0.173178
		H    1.923009  -1.245658  -0.424501
		H    2.650042   0.496122  -0.106256
*
