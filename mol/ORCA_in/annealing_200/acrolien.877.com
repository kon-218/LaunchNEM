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

# 	29626
* xyz 0 1
		C   -0.592339  -0.452953   0.047995
		O   -0.556082  -1.592700  -0.023029
		C    0.620954   0.451224  -0.040080
		C    1.837274  -0.191310   0.023081
		H   -1.488344   0.012906   0.005517
		H    0.607269   1.500481  -0.000105
		H    1.982408  -1.302722   0.074629
		H    2.486234   0.614799  -0.090464
*
