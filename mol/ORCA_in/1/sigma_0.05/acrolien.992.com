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

# 	9607
* xyz 0 1
		C   -1.189551  -0.343623   0.001210
		O   -1.437523  -1.371970   0.667614
		C    0.047943   0.491912   0.222725
		C    1.253759   0.091239  -0.154549
		H   -2.028014   0.067924  -0.770677
		H   -0.163181   1.350448   0.568077
		H    1.358156  -1.053353  -0.446975
		H    2.139491   0.801937  -0.072241
*