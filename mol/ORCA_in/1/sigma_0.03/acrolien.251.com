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

# 	978
* xyz 0 1
		C   -1.160192  -0.394690   0.063637
		O   -2.156686  -0.453840   0.690932
		C    0.048121   0.448159   0.355072
		C    1.192616   0.063343  -0.256975
		H   -1.115080  -0.990096  -0.792686
		H   -0.215997   1.285126   1.092047
		H    1.400126  -0.638775  -0.977152
		H    2.016201   0.664410  -0.187751
*
