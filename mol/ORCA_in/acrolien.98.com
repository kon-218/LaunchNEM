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

# 	12902
* xyz 0 1
		C   -1.217895  -0.349690   0.042975
		O   -1.312351  -1.523441   0.348686
		C    0.025881   0.549395   0.105976
		C    1.292851   0.032582  -0.009299
		H   -2.250938   0.121093  -0.435836
		H   -0.265687   1.615491   0.256980
		H    1.537261  -1.029046  -0.270142
		H    2.135426   0.598078  -0.100765
*
