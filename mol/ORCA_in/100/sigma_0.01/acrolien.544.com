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

# 	12154
* xyz 0 1
		C   -1.192915  -0.324620   0.087595
		O   -1.980782  -0.817382   0.866341
		C    0.004863   0.417030   0.301657
		C    1.212299   0.084754  -0.158540
		H   -1.321063  -0.662352  -1.052165
		H   -0.099033   1.246907   1.037320
		H    1.221103  -0.689921  -1.017527
		H    2.145558   0.702767  -0.050368
*