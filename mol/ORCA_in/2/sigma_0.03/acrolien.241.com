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

# 	29856
* xyz 0 1
		C   -0.569464  -0.411327  -0.050682
		O   -0.605638  -1.650264   0.018549
		C    0.644529   0.385942  -0.000859
		C    1.858739  -0.118496   0.004237
		H   -1.597558   0.161842   0.143431
		H    0.450475   1.424255   0.171716
		H    2.081178  -1.097166   0.019767
		H    2.605341   0.690565  -0.063619
*