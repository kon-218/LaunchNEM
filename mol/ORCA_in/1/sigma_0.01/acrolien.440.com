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

# 	30994
* xyz 0 1
		C   -0.536289  -0.437184  -0.069467
		O   -0.599063  -1.672686   0.031545
		C    0.589512   0.430600   0.020760
		C    1.849376  -0.105051  -0.017400
		H   -1.438972   0.211266   0.053185
		H    0.694007   1.726438   0.234477
		H    1.935878  -1.237996   0.025800
		H    2.668151   0.436139  -0.017706
*