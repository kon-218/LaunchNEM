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

# 	12253
* xyz 0 1
		C   -1.250169  -0.419216  -0.021415
		O   -1.898337  -0.895001   0.862650
		C    0.022464   0.426013   0.339113
		C    1.175324   0.081281  -0.260779
		H   -1.332779  -0.571474  -1.000212
		H   -0.105819   1.281545   1.085304
		H    1.286207  -0.622235  -0.929444
		H    2.043741   0.685449  -0.044729
*
