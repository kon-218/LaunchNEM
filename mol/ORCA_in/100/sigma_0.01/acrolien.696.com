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

# 	17034
* xyz 0 1
		C   -1.185851  -0.384837   0.020161
		O   -1.975905  -0.751961   0.861318
		C    0.028077   0.424198   0.298711
		C    1.222534   0.042423  -0.181685
		H   -1.402522  -0.535884  -1.140513
		H   -0.053644   1.338449   0.896405
		H    1.309038  -0.684615  -0.748306
		H    1.979163   0.633961  -0.024990
*