! B3LYP cc-pVDZ
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	13022
* xyz 0 1
		C   -1.231275  -0.312042  -0.042350
		O   -1.226958  -1.572805   0.051660
		C    0.025706   0.510943   0.031949
		C    1.222628  -0.051197  -0.062706
		H   -2.177192   0.159821  -0.100964
		H   -0.247701   1.711978   0.111992
		H    1.554412  -1.081322  -0.127499
		H    2.118507   0.608897   0.187584
*
