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

# 	14708
* xyz 0 1
		C   -1.191594  -0.357560  -0.070612
		O   -1.649316  -1.158088  -0.826209
		C    0.022647   0.509060  -0.238372
		C    1.224904   0.055863   0.129924
		H   -1.516299  -0.300486   1.072197
		H   -0.131286   1.410732  -0.698158
		H    1.222815  -0.879217   0.649958
		H    2.098059   0.700074   0.063639
*