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

# 	3180
* xyz 0 1
		C   -1.193716  -0.348781   0.077277
		O   -1.205024  -1.552261  -0.073181
		C   -0.034342   0.543551  -0.087639
		C    1.242944  -0.037920   0.015594
		H   -2.110407   0.121283   0.157496
		H   -0.175039   1.632649  -0.318685
		H    1.515901  -1.103697   0.245957
		H    2.009156   0.725035  -0.003969
*