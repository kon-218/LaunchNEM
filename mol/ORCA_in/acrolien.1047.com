! B3LYP cc-pVDZ
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	20779
* xyz 0 1
		C   -0.556289  -0.422615   0.042011
		O   -0.585894  -1.661501  -0.017987
		C    0.622154   0.404691  -0.036877
		C    1.833406  -0.111449   0.006474
		H   -1.609031   0.314054  -0.052419
		H    0.657858   1.560603   0.115361
		H    2.009562  -1.227680   0.178604
		H    2.613482   0.546895  -0.096913
*
