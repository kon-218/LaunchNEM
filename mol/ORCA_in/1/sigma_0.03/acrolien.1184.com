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

# 	12276
* xyz 0 1
		C   -1.202367  -0.361286  -0.036122
		O   -2.053823  -0.538839  -0.833280
		C   -0.013090   0.411405  -0.317181
		C    1.257436   0.079244   0.211864
		H   -1.306078  -0.712392   0.917382
		H   -0.054370   1.295876  -1.066853
		H    1.203319  -0.736666   1.027188
		H    2.125248   0.546308   0.058310
*
