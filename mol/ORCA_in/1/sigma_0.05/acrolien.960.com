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

# 	30696
* xyz 0 1
		C   -0.613481  -0.443887  -0.033214
		O   -0.528267  -1.597304   0.015746
		C    0.616464   0.430051   0.021604
		C    1.814024  -0.162139  -0.017402
		H   -1.613975   0.072865  -0.009376
		H    0.549485   1.597316   0.073040
		H    1.900062  -1.281408   0.015097
		H    2.852051   0.318001   0.021615
*
