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

# 	26600
* xyz 0 1
		C   -0.641568  -0.412028  -0.014783
		O   -0.546058  -1.609734   0.007784
		C    0.654987   0.354871   0.026136
		C    1.831983  -0.120526   0.003172
		H   -1.617904   0.090153  -0.121481
		H    0.682021   1.555666   0.016328
		H    1.995269  -1.318611  -0.052189
		H    2.611945   0.605021  -0.143553
*