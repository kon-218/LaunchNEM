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

# 	19347
* xyz 0 1
		C   -1.218548  -0.298998  -0.017860
		O   -1.577101  -1.072266  -0.797695
		C    0.000313   0.556840  -0.152628
		C    1.193253  -0.021141   0.123015
		H   -1.702708  -0.286581   0.764374
		H   -0.168929   1.474018  -0.549593
		H    1.368982  -0.945007   0.515571
		H    2.135802   0.583677   0.137781
*
