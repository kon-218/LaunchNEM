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

# 	32305
* xyz 0 1
		C   -0.608107  -0.392169  -0.015504
		O   -0.574867  -1.641766  -0.011800
		C    0.622207   0.365389  -0.008267
		C    1.875602  -0.107309   0.003087
		H   -1.501663  -0.047621   0.337760
		H    0.343523   1.658472  -0.095823
		H    1.858831  -1.200524   0.202758
		H    2.853835   0.488828  -0.024339
*
