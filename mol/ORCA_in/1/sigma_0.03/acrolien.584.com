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

# 	2004
* xyz 0 1
		C   -1.217654  -0.347799  -0.095787
		O   -1.303465  -1.362872  -0.510341
		C    0.042162   0.499388  -0.204365
		C    1.240223  -0.006749   0.116009
		H   -2.034524   0.218847   0.678515
		H   -0.108626   1.501607  -0.421134
		H    1.188297  -1.176830   0.230114
		H    2.149010   0.662038   0.203159
*
