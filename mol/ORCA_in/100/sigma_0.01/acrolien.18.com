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

# 	5217
* xyz 0 1
		C   -1.175741  -0.379862   0.022042
		O   -2.221627  -0.237605   0.655107
		C    0.108384   0.299832   0.397920
		C    1.145557   0.154265  -0.324523
		H   -1.128198  -1.108486  -0.869314
		H    0.066569   0.918716   1.371769
		H    1.094516  -0.381668  -1.347221
		H    2.071579   0.647990   0.152073
*
