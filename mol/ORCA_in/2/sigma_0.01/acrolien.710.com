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

# 	7140
* xyz 0 1
		C   -1.216876  -0.324441   0.002232
		O   -1.197512  -1.656005   0.080362
		C    0.045272   0.584909   0.090027
		C    1.163471  -0.080412  -0.026590
		H   -2.189152   0.174803  -0.340339
		H   -0.098253   1.757648   0.130327
		H    1.372288  -0.956992   0.001703
		H    2.179155   0.532231   0.106809
*