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

# 	25894
* xyz 0 1
		C   -0.610285  -0.436552   0.035563
		O   -0.590784  -1.631476  -0.015960
		C    0.636058   0.394709  -0.004703
		C    1.881660  -0.092365   0.011059
		H   -1.587592  -0.032799  -0.077875
		H    0.483194   1.495352  -0.106343
		H    1.953361  -1.196420  -0.008382
		H    2.750523   0.458641  -0.060516
*