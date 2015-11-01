#MEDIDAS DO GRAFO

# um score para cada vértice de cada grafo
# Kleinberg’s authority centrality scores
authority_score1 = NULL            
for(i in 1:length(grafo5)){
	authority_score1[[i]] = authority_score(grafo5[[i]])
}

# 1 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5 ); 
# grafo5 correlaciona com QI
authority_score_value1 = NULL 
for(i in 1:length(grafo5)){
	authority_score_value1[[i]] = authority_score(grafo5[[i]])$value
}

normauthority_score_value1 <-(authority_score_value1 - mean(authority_score_value1))/sd(authority_score_value1)

# 2 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
# Kleinberg’s authority centrality scores média
authority_scoreMedia1 = NULL
for(i in 1:length(grafo5)){
	authority_scoreMedia1[i] = mean(authority_score(grafo5[[i]])$vector)
}

normauthority_scoreMedia1 <-(authority_scoreMedia1 - mean(authority_scoreMedia1))/sd(authority_scoreMedia1)

#  um score para cada vértice de cada grafo
#Centralidade de Proximidade
closeness1 = NULL            
for(i in 1:length(grafo5)){
	closeness1[[i]] = closeness(grafo5[[i]], normalized = TRUE)
}

# 3 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
#closeness média
closenessMedia1 = NULL
for(i in 1:length(grafo5)){
	closenessMedia1[i] = mean(closeness(grafo5[[i]]))
}

normclosenessMedia1 <-(closenessMedia1 - mean(closenessMedia1))/sd(closenessMedia1)

# um score para cada vértice de cada grafo
#Burt’s constraint
constraint1 = NULL             
for(i in 1:length(grafo5)){
	constraint1[[i]] = constraint(grafo5[[i]])
}

# 4 - Não correlaciona com QI (grafo5, grafo5, grafo5, grafo5)
# grafo1 correlaciona com QI
#Burt’s constraint Media
constraintMedia1 = NULL             
for(i in 1:length(grafo5)){
	constraintMedia1[[i]] = mean(constraint(grafo5[[i]]))
}

normconstraintMedia1 <-(constraintMedia1 - mean(constraintMedia1))/sd(constraintMedia1)

# um score para cada vértice de cada grafo
# K-core decomposition of graphs
coreness1 = NULL             
for(i in 1:length(grafo5)){
	coreness1[[i]] = coreness(grafo5[[i]])
}

# 5-  Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
# K-core decomposition of graphs Media
corenessMedia1 = NULL             
for(i in 1:length(grafo5)){
	corenessMedia1[[i]] = mean(coreness(grafo5[[i]]))
}

normcorenessMedia1<-(corenessMedia1 - mean(corenessMedia1))/sd(corenessMedia1)

# 6 - Não correlaciona com QI (grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
# retorna NaN para grafo1
# Graph motifs
count_motifs1 = NULL             
for(i in 1:length(grafo5)){
	count_motifs1[[i]] = count_motifs(grafo5[[i]], size = 3)
}

normcount_motifs1<-(count_motifs1 - mean(count_motifs1))/sd(count_motifs1)

# um score para cada vértice de cada grafo
# Find triangles in graphs
count_triangles1 = NULL             
for(i in 1:length(grafo5)){
	count_triangles1[[i]] = count_triangles(grafo5[[i]])
}

# 7 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
# Find triangles in graphs Media
count_trianglesMedia1 = NULL
for(i in 1:length(grafo5)){
	count_trianglesMedia1[i] = mean(count_triangles(grafo5[[i]]))
}

normcount_trianglesMedia1 <-(count_trianglesMedia1 - mean(count_trianglesMedia1))/sd(count_trianglesMedia1)

# um score para cada vértice de cada grafo
#Degree and degree distribution of the vertices
grau1 = NULL  
for(i in 1:length(grafo5)){
	grau1[[i]] = degree(grafo5[[i]], normalized = TRUE)
}

# 8 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
#Grau médio de cada grafo
grauMedio1 = NULL
for(i in 1:length(grafo5)){
	grauMedio1[i] = mean(degree(grafo5[[i]], normalized=TRUE))
}

normgrauMedio1<-(grauMedio1 - mean(grauMedio1))/sd(grauMedio1)

# um score para cada vértice de cada grafo
# Distribuição de Grau 
degree_distribution1 = NULL   
for(i in 1:length(grafo5)){
	degree_distribution1[[i]] = degree_distribution(grafo5[[i]])
}

# 9 - Não correlaciona com QI (grafo1, grafo5, grafo5 grafo5, grafo5)
# Distribuição Media de Grau 
degree_distributionMedia1 = NULL   
for(i in 1:length(grafo5)){
	degree_distributionMedia1[[i]] = mean(degree_distribution(grafo5[[i]]))
}

normgrauMedio1<-(grauMedio1-mean(grauMedio1))/sd(grauMedio1)

# 10 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5, grafo5)
#Diameter of a graph 
diametro1 = NULL
for(i in 1:length(grafo5)){
	diametro1[i] = diameter((grafo5[[i]]))
}

normdiametro1<-(diametro1-mean(diametro1))/sd(diametro1)

# um score para cada vértice de cada grafo
# Eccentricity of the vertices in a graph (s its shortest path distance from the farthest
 # other node in the graph)
eccentricity1 = NULL           
for(i in 1:length(grafo5)){
	eccentricity1[[i]] = eccentricity(grafo5[[i]])
}

# 11 - Não correlaciona com QI (grafo5, grafo5, grafo5)
# grafo1, grafo5 correlaciona com QI
#Excentricidade média de cada grafo
excentricidadeMedia1 = NULL
for(i in 1:length(grafo5)){
	excentricidadeMedia1[i] = mean(eccentricity(grafo5[[i]]))
}

normexcentricidadeMedia1<-(excentricidadeMedia1  - mean(excentricidadeMedia1))/sd(excentricidadeMedia1)

# 12 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
#Edge connectivity (adhesion)
edge_connectivity1 = NULL
for(i in 1:length(grafo5)){
	edge_connectivity1[i] = edge_connectivity(grafo5[[i]])
}

normedge_connectivity1<-(edge_connectivity1 - mean(edge_connectivity1))/sd(edge_connectivity1)

# 13 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
# Graph density
densidade1 = NULL 
for(i in 1:length(grafo5)){
	densidade1[[i]] = edge_density(grafo5[[i]])
}

normdensidade1 <-(densidade1  - mean(densidade1 ))/sd(densidade1)

# um score para cada vértice de cada grafo
 #Find Eigenvector Centrality Scores of Network Positions
eigen_centrality1 = NULL 
for(i in 1:length(grafo5)){
	eigen_centrality1[[i]] = eigen_centrality(grafo5[[i]], directed = FALSE)
}

# 14 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
#Autocentralidade média
autocentralidadeMedia1 = NULL
for(i in 1:length(grafo5)){
	autocentralidadeMedia1[i] = mean(eigen_centrality(grafo5[[i]], directed = FALSE)$vector)
}

normautocentralidadeMedia1 <-(autocentralidadeMedia1 - mean(autocentralidadeMedia1))/sd(autocentralidadeMedia1)

# 15 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
autocentralidadeautovalor1 = NULL
for(i in 1:length(grafo5)){
	autocentralidadeautovalor1[i] =eigen_centrality(grafo5[[i]], directed = FALSE)$value
}

normautocentralidadeautovalor1 <-(autocentralidadeautovalor1   - mean(autocentralidadeautovalor1))/sd(autocentralidadeautovalor1)

# um score para cada vértice de cada grafo
#Vertex betweenness centrality
centrinterm1 = NULL             
for(i in 1:length(grafo5)){
	centrinterm1[[i]] = betweenness(grafo5[[i]], normalized = TRUE)
}

# 16 - Não correlaciona com QI (grafo5, grafo5)
# grafo1, grafo5, grafo5 correlaciona com QI
#Centralidade de Intermediação de Vértices Média
centrintermMedia1 = NULL
for(i in 1:length(grafo5)){
	centrintermMedia1[i] = mean(betweenness(grafo5[[i]], directed = FALSE))
}

normcentrintermMedia1 <-(centrintermMedia1- mean(centrintermMedia1 ))/sd(centrintermMedia1)

# um score para cada aresta de cada grafo
#Edge betweenness centrality
edge_betweenness1 = NULL             
for(i in 1:length(grafo5)){
	edge_betweenness1[[i]] = edge_betweenness(grafo5[[i]])
}

# 17 - Não correlaciona com QI (grafo5, grafo5)
# grafo1, grafo5, grafo5 correlaciona com QI
#Centralidade de Intermediação de Arestas Média
edge_betweennessMedia1  = NULL
for(i in 1:length(grafo5)){
	edge_betweennessMedia1[i] = mean(betweenness(grafo5[[i]], directed = FALSE))
}

normedge_betweennessMedia1 <-(edge_betweennessMedia1 -  mean(edge_betweennessMedia1))/sd(edge_betweennessMedia1)

# 18 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
#The size of the graph (number of edges)
gsize1 = NULL           
for(i in 1:length(grafo5)){
	gsize1[[i]] = gsize(grafo5[[i]])
}

normgsize1  <-(gsize1 - mean(gsize1))/sd(gsize1)

# um score para cada aresta de cada grafo
# Kleinberg’s hub centrality scores.
hub_score1 = NULL
for(i in 1:length(grafo5)){
	hub_score1[[i]] = hub_score(grafo5[[i]])
}

# 19 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
#Kleinberg’s hub centrality - autovalor correspondente
hub_score_value1 = NULL
for(i in 1:length(grafo5)){
	hub_score_value1[i] =hub_score(grafo5[[i]])$value
}

normhub_score_value1  <-(hub_score_value1 - mean(hub_score_value1))/sd(hub_score_value1)

# 20 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
#Kleinberg’s hub centrality médio
hub_scoreMedio1 = NULL
for(i in 1:length(grafo5)){
	hub_scoreMedio1[i] = mean(eigen_centrality(grafo5[[i]])$vector)
}

normhub_scoreMedio1  <-(hub_scoreMedio1 - mean(hub_scoreMedio1))/sd(hub_scoreMedio1)

# 21 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
# Minimum cut in a graph: minimum total weight of the edges needed to remove to #separate the graph into (at least) two components
min_cut1 = NULL
for(i in 1:length(grafo5)){
	min_cut1[i] = min_cut(grafo5[[i]])
}

normmin_cut1  <-(min_cut1 - mean(min_cut1))/sd(min_cut1)

# 22 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5, grafo5)
# Radius of a graph
radius1 = NULL   
for(i in 1:length(grafo5)){
	radius1[[i]] = radius(grafo5[[i]])
}

normradius1  <-(radius1 - mean(radius1))/sd(radius1)

#dados distintos cada vértice de cada grafo do grafo1
# Strength or weighted vertex degree
strength1 = NULL   
for(i in 1:length(grafo5)){
	strength1[[i]] = strength(grafo5[[i]])
}

# 23 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5) 
# grafo5 correlaciona com QI
# Strength or weighted vertex degree Média
strengthMedia1  = NULL
for(i in 1:length(grafo5)){
	strengthMedia1[i] = mean(strength(grafo5[[i]]))
}

normstrengthMedia1  <-(strengthMedia1 - mean(strengthMedia1))/sd(strengthMedia1)

# 24 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5, grafo5)
# Find subgraph centrality scores of network positions
# measures the number of subgraphs a vertex participates in, weightingthem according #to their size
subgraph_centrality1  = NULL
for(i in 1:length(grafo5)){
	subgraph_centrality1[i] = subgraph_centrality(grafo5[[i]])
}

normsubgraph_centrality1  <-(subgraph_centrality1 - mean(subgraph_centrality1))/sd(subgraph_centrality1)

# 25 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5, grafo5)
#Transitivity of a graph (Coeficiente de Clusterização)
transitivity1 = NULL           
for(i in 1:length(grafo5)){
	transitivity1[[i]]= transitivity(grafo5[[i]], type = 'undirected', isolates = 'zero')
}

normtransitivity1   <-(transitivity1 - mean(transitivity1))/sd(transitivity1)

# 26 - Não correlaciona com QI (grafo1, grafo5, grafo5, grafo5)
# grafo5 correlaciona com QI
# vertex_connectivity (group cohesion)
vertex_connectivity1 = NULL           
for(i in 1:length(grafo5)){
	vertex_connectivity1[[i]]= vertex_connectivity(grafo5[[i]])
}

normvertex_connectivity1 <-(vertex_connectivity1 - mean(vertex_connectivity1))/sd(vertex_connectivity1)
