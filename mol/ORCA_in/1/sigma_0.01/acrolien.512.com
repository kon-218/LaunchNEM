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

# 	28323
* xyz 0 1
		C   -0.577004  -0.442049  -0.032255
		O   -0.605992  -1.658035   0.019702
		C    0.642377   0.400425   0.021938
		C    1.837592  -0.077779  -0.019834
		H   -1.482654   0.176863  -0.100098
		H    0.466883   1.556017   0.151464
		H    2.043184  -1.095588   0.011594
		H    2.874881   0.369186  -0.008625
*
