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

# 	11599
* xyz 0 1
		C   -1.269706  -0.336536  -0.117160
		O   -2.187121  -0.282545  -0.823205
		C    0.135214   0.358948  -0.330077
		C    1.205779   0.235110   0.309088
		H   -1.283083  -1.195706   0.899532
		H    0.203689   1.094836  -1.234339
		H    1.138062  -0.479511   1.192787
		H    2.022185   0.639556   0.055045
*
