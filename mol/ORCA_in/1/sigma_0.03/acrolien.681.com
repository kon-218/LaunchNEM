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

# 	26149
* xyz 0 1
		C   -0.573515  -0.446560  -0.030315
		O   -0.604739  -1.642559   0.014080
		C    0.644883   0.410118   0.015948
		C    1.844893  -0.120143  -0.016748
		H   -1.448613   0.088321   0.033501
		H    0.595664   1.606647   0.043650
		H    2.019563  -1.075938  -0.000406
		H    2.598969   0.570400   0.076383
*
