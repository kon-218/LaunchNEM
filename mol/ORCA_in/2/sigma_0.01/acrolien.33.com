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

# 	29953
* xyz 0 1
		C   -0.557522  -0.467747  -0.047179
		O   -0.590861  -1.670497   0.021686
		C    0.618503   0.501114   0.041403
		C    1.840633  -0.127564   0.004155
		H   -1.548547   0.116403  -0.006415
		H    0.452885   1.658187  -0.081458
		H    1.925148  -1.366818  -0.235932
		H    2.892661   0.478741  -0.000550
*
