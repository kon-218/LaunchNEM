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

# 	28213
* xyz 0 1
		C   -0.623796  -0.452096   0.004646
		O   -0.564001  -1.637058  -0.009017
		C    0.646130   0.456712   0.001817
		C    1.846395  -0.157266   0.018398
		H   -1.455029   0.231935   0.108081
		H    0.342577   1.396211  -0.174709
		H    1.901066  -1.052346  -0.073791
		H    2.814667   0.489990  -0.022047
*
