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

# 	2790
* xyz 0 1
		C   -1.224310  -0.281527  -0.012936
		O   -1.624491  -1.015858   0.925129
		C    0.016787   0.536322   0.185390
		C    1.162469   0.086813  -0.103633
		H   -1.677217  -0.400877  -0.935204
		H   -0.056260   1.408151   0.607949
		H    1.240304  -0.955156  -0.519054
		H    2.080639   0.712987  -0.095077
*