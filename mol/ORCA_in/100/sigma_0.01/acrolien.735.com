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

# 	10259
* xyz 0 1
		C   -1.184103  -0.267792   0.004504
		O   -2.156399  -0.342196   0.731149
		C    0.104244   0.369290   0.416578
		C    1.167030   0.134077  -0.295975
		H   -1.108850  -0.970561  -0.850935
		H    0.078060   1.199810   1.233878
		H    1.181085  -0.608163  -1.063998
		H    1.905854   0.544277  -0.165444
*
