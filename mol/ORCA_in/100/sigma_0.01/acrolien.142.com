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

# 	26725
* xyz 0 1
		C   -0.544442  -0.380190   0.017937
		O   -0.571210  -1.637381  -0.004454
		C    0.617918   0.376115  -0.024015
		C    1.817125  -0.153661   0.042726
		H   -1.655609   0.316382  -0.013232
		H    0.284931   1.499258  -0.045101
		H    2.174813  -1.138712  -0.243594
		H    2.675888   0.520810  -0.066019
*
