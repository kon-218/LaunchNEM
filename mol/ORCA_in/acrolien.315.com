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

# 	30560
* xyz 0 1
		C   -0.599746  -0.438121  -0.029095
		O   -0.524440  -1.590908   0.021312
		C    0.614346   0.440931   0.049439
		C    1.790496  -0.205558   0.003147
		H   -1.647428   0.129923  -0.320890
		H    0.516046   1.506870   0.105494
		H    1.974339  -1.164737  -0.144935
		H    2.920336   0.469739  -0.260015
*
