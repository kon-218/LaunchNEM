! B3LYP cc-pVDZ
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	14356
* xyz 0 1
		C   -1.176393  -0.342591   0.051212
		O   -1.944465  -0.646113   0.925866
		C   -0.021582   0.480334   0.307727
		C    1.166172   0.067247  -0.302973
		H   -1.258396  -0.776323  -0.938357
		H   -0.182315   1.403544   0.928536
		H    1.265310  -0.807197  -1.072811
		H    2.122731   0.602156   0.118566
*
