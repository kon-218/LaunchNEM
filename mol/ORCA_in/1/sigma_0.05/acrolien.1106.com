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

# 	22832
* xyz 0 1
		C   -0.572102  -0.466390  -0.000967
		O   -0.627058  -1.649843   0.008666
		C    0.631647   0.388623  -0.019764
		C    1.871432  -0.064253  -0.017376
		H   -1.515337   0.242041   0.035371
		H    0.513385   1.450942   0.077037
		H    2.064943  -1.087980  -0.043513
		H    2.840480   0.533235   0.265396
*