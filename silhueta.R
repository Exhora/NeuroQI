sil = array(dim=c(length(pos), 316))

# calcula a silhueta para cada individuo de todos os clusters
for (i in 1:length(pos)) {
	sil[i,] =  silhouette(labels, dmatrix = dados[i,,])[,3]
}
