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

# 	7917
* xyz 0 1
		C   -1.169784  -0.343693  -0.062330
		O   -2.111444  -0.432319  -0.712677
		C    0.029093   0.475580  -0.297912
		C    1.255766   0.064105   0.219537
		H   -1.241726  -0.987097   0.855797
		H   -0.034881   1.362220  -1.007758
		H    1.210881  -0.881789   0.902058
		H    2.038581   0.686213   0.133947
*
