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

# 	2125
* xyz 0 1
		C   -1.165925  -0.338952   0.041402
		O   -1.364548  -1.382591   0.620316
		C    0.074169   0.538952   0.142119
		C    1.278327   0.006899  -0.107819
		H   -2.045691   0.048105  -0.600618
		H   -0.165011   1.428334   0.442552
		H    1.288900  -1.051738  -0.554715
		H    2.120980   0.733962   0.035511
*
