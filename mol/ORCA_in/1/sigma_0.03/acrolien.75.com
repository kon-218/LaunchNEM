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

# 	28858
* xyz 0 1
		C   -0.547242  -0.388350   0.007654
		O   -0.572928  -1.663428  -0.003183
		C    0.594380   0.431507   0.010602
		C    1.829730  -0.137246  -0.031929
		H   -1.527335   0.114266   0.044862
		H    0.519182   1.481425  -0.132261
		H    1.916347  -1.319972   0.054105
		H    2.799443   0.501378   0.253189
*