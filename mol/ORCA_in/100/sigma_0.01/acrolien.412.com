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

# 	17933
* xyz 0 1
		C   -1.128525  -0.356499   0.013220
		O   -1.957542  -0.638630  -0.904041
		C    0.030564   0.408551  -0.329788
		C    1.160978   0.101429   0.181331
		H   -1.375834  -0.708638   1.154119
		H    0.018835   1.154379  -1.012114
		H    1.204179  -0.627171   1.005181
		H    2.062013   0.694897  -0.084431
*