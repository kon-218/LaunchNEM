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

# 	10822
* xyz 0 1
		C   -1.173539  -0.296978   0.007322
		O   -1.171532  -1.488393   0.111374
		C    0.035533   0.533877   0.005224
		C    1.249256  -0.063809   0.032572
		H   -2.266767   0.272149  -0.047737
		H   -0.173381   1.557768  -0.047298
		H    1.286828  -1.115039  -0.089535
		H    2.138119   0.595063   0.014280
*