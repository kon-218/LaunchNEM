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

# 	29264
* xyz 0 1
		C   -0.600911  -0.408195   0.022007
		O   -0.561214  -1.627314  -0.020425
		C    0.641180   0.416543   0.001375
		C    1.829507  -0.154460   0.004527
		H   -1.512959   0.113733   0.051139
		H    0.469752   1.402348  -0.110903
		H    2.024354  -1.117169   0.174988
		H    2.589258   0.440003  -0.139495
*
