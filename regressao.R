Idade = phenotype$AGE_AT_SCAN[pos]
Sexo = phenotype$SEX[pos]

for(i in 1:length(Idade)){
	if(Idade[[i]] > 100){
		Idade[[i]] = Idade[[i]]/1000
	}
}

QI = phenotype$VIQ[pos]

#Normalizacao

normIdade = (Idade-mean(Idade))/sd(Idade)

normQI = (QI-mean(QI))/sd(QI)


summary(lm(normauthority_score_value1 ~ normQI+Sexo +normIdade))
summary(lm(normauthority_scoreMedia1 ~ normQI+Sexo +normIdade))
summary(lm(normclosenessMedia1  ~ normQI+Sexo +normIdade))
summary(lm(normconstraintMedia1 ~ normQI+Sexo +normIdade))
summary(lm(normcorenessMedia1 ~ normQI+Sexo +normIdade))
summary(lm(normcount_motifs1 ~ normQI+Sexo +normIdade))
summary(lm(normcount_trianglesMedia1 ~ normQI+Sexo +normIdade))
summary(lm(normgrauMedio1 ~ normQI+Sexo +normIdade))
summary(lm(normgrauMedio1 ~ normQI+Sexo +normIdade))
summary(lm(normdiametro1 ~ normQI+Sexo +normIdade))
summary(lm(normexcentricidadeMedia1 ~ normQI+Sexo +normIdade))
summary(lm(normedge_connectivity1 ~ normQI+Sexo +normIdade))
summary(lm(normdensidade1  ~ normQI+Sexo +normIdade))
summary(lm(normautocentralidadeMedia1 ~ normQI+Sexo +normIdade))
summary(lm(normautocentralidadeautovalor1   ~ normQI+Sexo +normIdade))
summary(lm(normcentrintermMedia1 ~ normQI+Sexo +normIdade))
summary(lm(normedge_betweennessMedia1  ~ normQI+Sexo +normIdade))
summary(lm(normgsize1 ~ normQI+Sexo +normIdade))
summary(lm(normhub_scoreMedio1 ~ normQI+Sexo +normIdade))
summary(lm(normhub_score_value1 ~ normQI+Sexo + normIdade))
summary(lm(normmin_cut1  ~ normQI+Sexo +normIdade))
summary(lm(normradius1 ~ normQI+ Sexo + normIdade))
summary(lm(normstrengthMedia1  ~ normQI+Sexo +normIdade))
summary(lm(normsubgraph_centrality1~ normQI+Sexo +normIdade))
summary(lm(normtransitivity1 ~ normQI+Sexo +normIdade))
summary(lm(normvertex_connectivity1  ~ normQI+Sexo +normIdade))

summary(lm(normQI ~ normauthority_score_value1 + normauthority_scoreMedia1 + normclosenessMedia1 + normconstraintMedia1 + normcorenessMedia1 + normcount_motifs1 + normcount_trianglesMedia1 + normgrauMedio1 + normdegree_distributionMedia1 +norm diametro1 + normexcentricidadeMedia1 + normedge_connectivity1 + normdensidade1 + normautocentralidadeMedia1 + normautocentralidadeautovalor1 + normcentrintermMedia1 + normedge_betweennessMedia1 + normgsize1 + normhub_score_value1 + normhub_scoreMedio1 + normmin_cut1 + normradius1 + normstrengthMedia1 + normsubgraph_centrality1 + normtransitivity1 + normvertex_connectivity1))

