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

# 	10685
* xyz 0 1
		C   -1.174662  -0.398364   0.050053
		O   -1.491797  -1.451563   0.568827
		C    0.062364   0.364545   0.316479
		C    1.251459   0.080144  -0.137131
		H   -1.934340   0.287283  -0.875538
		H   -0.223871   1.375211   0.675412
		H    1.380488  -0.897073  -0.668860
		H    2.083456   0.658419   0.086148
*