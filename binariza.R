#Transforma uma matriz de adjacência de p-valor para binaria
#valores menores que 0,05 passa a ser 1 todos os outros sao 0

for(i in 1:dim(cluster1)[1]){
	for(j in 1:dim(cluster1)[2]){
		for(k in 1:dim(cluster1)[3]){
			if(cluster1[i,j,k]<0.05){
				cluster1[i,j,k] = 1
			}
			else{
				cluster1[i,j,k] =  0
			}
		}
	}
}

for(i in 1:dim(cluster2)[1]){
	for(j in 1:dim(cluster2)[2]){
		for(k in 1:dim(cluster2)[3]){
			if(cluster2[i,j,k]<0.05){
				cluster2[i,j,k] = 1
			}
			else{
				cluster2[i,j,k] =  0
			}
		}
	}
}

for(i in 1:dim(cluster3)[1]){
	for(j in 1:dim(cluster3)[2]){
		for(k in 1:dim(cluster3)[3]){
			if(cluster3[i,j,k]<0.05){
				cluster3[i,j,k] = 1
			}
			else{
				cluster3[i,j,k] =  0
			}
		}
	}
}

for(i in 1:dim(cluster4)[1]){
	for(j in 1:dim(cluster4)[2]){
		for(k in 1:dim(cluster4)[3]){
			if(cluster4[i,j,k]<0.05){
				cluster4[i,j,k] = 1
			}
			else{
				cluster4[i,j,k] =  0
			}
		}
	}
}

for(i in 1:dim(cluster5)[1]){
	for(j in 1:dim(cluster5)[2]){
		for(k in 1:dim(cluster5)[3]){
			if(cluster5[i,j,k]<0.05){
				cluster5[i,j,k] = 1
			}
			else{
				cluster5[i,j,k] =  0
			}
		}
	}
}

