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

# 	14250
* xyz 0 1
		C   -1.145092  -0.222850   0.155199
		O   -1.565868  -0.948249   1.010345
		C   -0.019680   0.545651   0.237097
		C    1.171740   0.001992  -0.191395
		H   -1.816035  -0.316182  -0.992336
		H    0.003150   1.436118   0.818137
		H    1.107028  -1.050893  -0.803040
		H    2.235439   0.555308  -0.200838
*
