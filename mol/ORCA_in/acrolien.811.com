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

# 	30549
* xyz 0 1
		C   -0.580208  -0.447396   0.027881
		O   -0.607268  -1.645523  -0.018051
		C    0.614902   0.408081  -0.045309
		C    1.870362  -0.117662   0.024354
		H   -1.510191   0.232648   0.200212
		H    0.484551   1.504589  -0.065383
		H    2.215863  -1.039283   0.010709
		H    2.712592   0.579944   0.055071
*
