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

# 	6310
* xyz 0 1
		C   -1.189432  -0.334736  -0.015675
		O   -1.636841  -1.029993   0.776888
		C    0.027545   0.504740   0.273048
		C    1.211915   0.031797  -0.116576
		H   -1.627569  -0.327506  -1.073916
		H   -0.230251   1.259519   0.856208
		H    1.338470  -0.882346  -0.687570
		H    2.071198   0.799614   0.005198
*
