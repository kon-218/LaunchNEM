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

# 	31471
* xyz 0 1
		C   -0.550896  -0.401672   0.042378
		O   -0.551866  -1.586428  -0.025925
		C    0.555010   0.369651  -0.028734
		C    1.838155  -0.157571   0.009673
		H   -1.410891   0.091594   0.122665
		H    0.326758   1.457862  -0.138638
		H    1.795396  -1.230159   0.106471
		H    2.995850   0.367455   0.035160
*
