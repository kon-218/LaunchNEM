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

# 	6255
* xyz 0 1
		C   -1.166286  -0.370307  -0.020673
		O   -2.058955  -0.612733  -0.869400
		C    0.058588   0.409029  -0.297679
		C    1.205740   0.111918   0.229554
		H   -1.228287  -0.634958   1.040863
		H   -0.086976   1.043732  -1.094317
		H    1.263079  -0.470010   0.962022
		H    2.022757   0.611878   0.049866
*
