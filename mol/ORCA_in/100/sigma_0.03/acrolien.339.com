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

# 	29087
* xyz 0 1
		C   -0.624926  -0.486693   0.057929
		O   -0.614508  -1.656644  -0.028224
		C    0.700184   0.419664  -0.049770
		C    1.832904  -0.066366   0.010181
		H   -1.576071   0.223505   0.118546
		H    0.637694   1.502049  -0.103232
		H    2.242616  -1.033969   0.082270
		H    2.702770   0.472498   0.130818
*