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

# 	11688
* xyz 0 1
		C   -1.198906  -0.256268   0.071023
		O   -1.670307  -1.134668   0.841027
		C   -0.008087   0.511063   0.271343
		C    1.175244   0.000528  -0.075326
		H   -1.698277  -0.177881  -1.140100
		H   -0.191865   1.423169   0.888308
		H    1.233983  -0.897820  -0.765722
		H    2.330983   0.529947  -0.097361
*
