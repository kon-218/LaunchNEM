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

# 	18187
* xyz 0 1
		C   -1.230553  -0.328372   0.012397
		O   -1.460108  -1.292053  -0.617382
		C   -0.004285   0.527560  -0.119595
		C    1.206019   0.020873   0.076526
		H   -1.964274   0.012130   0.856801
		H   -0.068806   1.543308  -0.689311
		H    1.329437  -1.007027   0.417828
		H    2.192741   0.550515   0.017951
*