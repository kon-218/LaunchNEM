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

# 	23333
* xyz 0 1
		C   -0.541654  -0.433892  -0.027766
		O   -0.630106  -1.671984   0.024912
		C    0.650838   0.404925   0.009451
		C    1.834635  -0.059932  -0.018182
		H   -1.438420   0.121607  -0.114189
		H    0.654025   1.436927   0.158630
		H    1.976903  -1.105433  -0.124823
		H    2.633960   0.377697   0.138042
*
