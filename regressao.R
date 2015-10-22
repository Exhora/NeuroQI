Idade = phenotype$AGE_AT_SCAN[pos]
Sexo = phenotype$SEX[pos]

for(i in 1:length(Idade)){
	if(Idade[[i]] > 100){
		Idade[[i]] = Idade[[i]]/1000
	}
}

QI = phenotype$FIQ[pos]

#Normalizacao

normIdade = (Idade-mean(Idade))/sd(Idade)

normQI = (QI-mean(QI))/sd(QI)


