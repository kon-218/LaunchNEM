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

# 	12469
* xyz 0 1
		C   -1.217447  -0.363989  -0.056112
		O   -1.585414  -1.222221  -0.735114
		C    0.012325   0.509112  -0.243852
		C    1.213177   0.029920   0.166837
		H   -1.612402  -0.256234   0.911920
		H   -0.091073   1.472859  -0.650076
		H    1.316662  -0.859341   0.649293
		H    1.981535   0.681611  -0.015991
*
