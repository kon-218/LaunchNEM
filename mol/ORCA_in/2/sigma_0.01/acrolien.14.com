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

# 	2675
* xyz 0 1
		C   -1.258054  -0.413055   0.095959
		O   -2.127841  -0.488314   0.810812
		C   -0.018853   0.456852   0.200448
		C    1.181814   0.133126  -0.313387
		H   -1.126116  -1.042067  -0.682336
		H   -0.135418   1.455625   0.979077
		H    1.266473  -0.889962  -0.908584
		H    2.179426   0.740550  -0.213243
*
