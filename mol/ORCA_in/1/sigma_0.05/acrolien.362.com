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

# 	11374
* xyz 0 1
		C   -1.127875  -0.374182  -0.041201
		O   -2.008784  -0.528410   0.844869
		C    0.013272   0.497381   0.245154
		C    1.250720   0.028799  -0.243254
		H   -1.411328  -0.803231  -0.952170
		H   -0.080261   1.450067   1.052625
		H    1.281229  -0.852233  -0.909418
		H    2.124562   0.673972   0.012493
*