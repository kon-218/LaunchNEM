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

# 	1324
* xyz 0 1
		C   -1.168750  -0.365031  -0.012767
		O   -1.430291  -1.388665  -0.547348
		C    0.002290   0.422069  -0.183683
		C    1.210607   0.016061   0.100304
		H   -1.967273   0.034719   0.759127
		H   -0.122995   1.497755  -0.564750
		H    1.384555  -0.866619   0.501469
		H    2.050538   0.613766  -0.052644
*
