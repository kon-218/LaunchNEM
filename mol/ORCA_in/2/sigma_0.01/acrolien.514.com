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

# 	23922
* xyz 0 1
		C   -0.599902  -0.422090   0.062857
		O   -0.566210  -1.653212  -0.033867
		C    0.597636   0.453642  -0.047271
		C    1.870765  -0.127514   0.034012
		H   -1.492723   0.068238   0.028436
		H    0.431542   1.547102  -0.043002
		H    1.985300  -1.365863   0.122041
		H    2.757964   0.390813  -0.175173
*
