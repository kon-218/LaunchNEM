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

# 	22960
* xyz 0 1
		C   -0.593878  -0.444730   0.011063
		O   -0.547876  -1.610055  -0.005747
		C    0.585065   0.442161  -0.053313
		C    1.841186  -0.163878   0.023415
		H   -1.542577   0.198788   0.223426
		H    0.515344   1.473425   0.025882
		H    2.041587  -1.273811  -0.070400
		H    2.794408   0.416269   0.143074
*
