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

# 	2985
* xyz 0 1
		C   -1.250225  -0.313553   0.027580
		O   -1.307113  -1.331313   0.549852
		C    0.014768   0.577807   0.056076
		C    1.264543   0.025895  -0.154331
		H   -2.118681  -0.124244  -0.595598
		H   -0.196460   1.598961   0.528767
		H    1.268421  -1.027706  -0.309720
		H    2.314745   0.571086  -0.118221
*