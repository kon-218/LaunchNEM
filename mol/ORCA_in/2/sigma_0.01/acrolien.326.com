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

# 	14947
* xyz 0 1
		C   -1.146479  -0.292857   0.023099
		O   -1.531702  -1.207127   0.719680
		C   -0.005950   0.482852   0.208067
		C    1.239030   0.012631  -0.134697
		H   -1.760560  -0.085066  -0.944593
		H   -0.119502   1.414025   0.585142
		H    1.364636  -0.929122  -0.462056
		H    1.968390   0.611441   0.032048
*
