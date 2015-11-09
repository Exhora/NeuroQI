slope = function(silhouetteA, silhouetteB) {
  silhouetteDelta = -(silhouetteB - silhouetteA) * (silhouetteA ** slopeP)
  silWidth = silhouetteDelta[,3]
  mean(silWidth)
}

bestClusterScore = -100.0
bestClusterSize = 0
for (i in minClusters:(maxClusters - 1)) {
  score = slope(sils[[i]], sils[[i + 1]])
  if (score > bestClusterScore) {
    bestClusterScore = score
    bestClusterSize = i
  }
  print(c(i, score))
}

print(c("best", bestClusterScore, "index", bestClusterSize))
