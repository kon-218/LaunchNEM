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

# 	26633
* xyz 0 1
		C   -0.604620  -0.493651  -0.021320
		O   -0.631067  -1.646180   0.019267
		C    0.658716   0.402097   0.004895
		C    1.901265  -0.061022  -0.013795
		H   -1.474230   0.132749  -0.101351
		H    0.457816   1.627956   0.162806
		H    2.030289  -1.053055  -0.066133
		H    2.671980   0.487334   0.072662
*