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

# 	29106
* xyz 0 1
		C   -0.626441  -0.487308  -0.026135
		O   -0.668830  -1.673602   0.013232
		C    0.688022   0.367849   0.008057
		C    1.896390  -0.015991  -0.013940
		H   -1.652114   0.093282   0.020813
		H    0.772260   1.420023   0.087513
		H    2.341037  -0.918961   0.013830
		H    2.837580   0.831320   0.055906
*
