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

# 	22192
* xyz 0 1
		C   -0.598213  -0.426925  -0.005035
		O   -0.582175  -1.679355  -0.017749
		C    0.665293   0.431725   0.000995
		C    1.819220  -0.091608   0.010366
		H   -1.502857   0.263446   0.293456
		H    0.492140   1.482996  -0.189065
		H    1.928943  -1.327835   0.164566
		H    2.831488   0.538660  -0.082048
*