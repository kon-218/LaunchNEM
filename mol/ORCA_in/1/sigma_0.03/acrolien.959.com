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

# 	25335
* xyz 0 1
		C   -0.613272  -0.434436   0.061702
		O   -0.568237  -1.616871  -0.040045
		C    0.626563   0.404230  -0.068302
		C    1.852432  -0.142231   0.033798
		H   -1.415066   0.163203   0.275021
		H    0.432476   1.409500  -0.127217
		H    1.950145  -1.097129   0.155878
		H    2.748245   0.501625  -0.005102
*
