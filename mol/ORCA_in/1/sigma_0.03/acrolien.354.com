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

# 	2247
* xyz 0 1
		C   -1.214179  -0.312549   0.066282
		O   -1.414131  -1.351223   0.685391
		C    0.021116   0.525956   0.155013
		C    1.172727   0.029798  -0.181298
		H   -1.951482  -0.065647  -0.878207
		H   -0.057860   1.548086   0.610744
		H    1.282120  -1.051924  -0.456201
		H    2.144134   0.643472  -0.016983
*
