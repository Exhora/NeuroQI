#Atencao: este codigo esta terrivelmente ineficiente.
#Não usar

#Transforma uma matriz de adjacência de p-valor para binaria
#valores menores que 0,05 passa a ser 1 todos os outros sao 0

dadosb = array(dim(dados))
for(i in 4466184:length(dados)){
	if (dados[i] < 0.05){
		dadosb[i] = 1
	}
	else{
		dadosb[i] = 0
	}
}
