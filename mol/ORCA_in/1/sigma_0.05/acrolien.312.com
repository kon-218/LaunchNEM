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

# 	7861
* xyz 0 1
		C   -1.167859  -0.244435   0.009215
		O   -1.235496  -1.490055  -0.142763
		C    0.004976   0.554510  -0.020676
		C    1.262088   0.101207   0.088531
		H   -2.215468   0.128317   0.264500
		H   -0.160438   1.526066  -0.167573
		H    1.253213  -0.986650  -0.022140
		H    2.208392   0.421377   0.037879
*