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

# 	29180
* xyz 0 1
		C   -0.619382  -0.458192  -0.002579
		O   -0.544646  -1.617003   0.004752
		C    0.604389   0.457778   0.016288
		C    1.846442  -0.177478  -0.047779
		H   -1.529847   0.062289  -0.070337
		H    0.713309   1.632436   0.061346
		H    1.911895  -1.118714   0.189474
		H    2.708677   0.451388   0.159681
*
