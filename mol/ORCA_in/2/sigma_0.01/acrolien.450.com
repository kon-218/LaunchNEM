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

# 	7472
* xyz 0 1
		C   -1.230676  -0.338066  -0.037303
		O   -1.986079  -0.636014  -0.885624
		C   -0.014249   0.453658  -0.257555
		C    1.209377   0.080751   0.227751
		H   -1.465922  -0.830778   0.923185
		H    0.039006   1.501607  -0.964758
		H    1.279445  -0.809442   0.913507
		H    2.171263   0.612058   0.100816
*
