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

# 	32418
* xyz 0 1
		C   -0.644978  -0.423711  -0.020729
		O   -0.551563  -1.621729   0.010300
		C    0.658348   0.383706  -0.017438
		C    1.855530  -0.124428   0.009066
		H   -1.592267   0.185686   0.097340
		H    0.407058   1.457329   0.113806
		H    1.891711  -1.208315  -0.054385
		H    2.711333   0.530993   0.032721
*
