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

# 	31969
* xyz 0 1
		C   -0.573128  -0.430887   0.030103
		O   -0.574931  -1.618064  -0.007957
		C    0.630957   0.411580  -0.041244
		C    1.839310  -0.122517   0.002373
		H   -1.647654  -0.031555   0.101131
		H    0.589515   1.405067  -0.051776
		H    1.779264  -1.265755  -0.088775
		H    2.760337   0.472692   0.282674
*
