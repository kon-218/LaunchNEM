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

# 	21705
* xyz 0 1
		C   -0.644270  -0.420906  -0.033163
		O   -0.540630  -1.674179   0.020277
		C    0.609622   0.474375   0.022313
		C    1.878391  -0.132432   0.016862
		H   -1.654308  -0.000282  -0.095697
		H    0.611541   1.675825   0.039689
		H    1.813694  -1.288731  -0.245176
		H    2.816621   0.357823  -0.090036
*
