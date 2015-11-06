#!/usr/bin/env Rscript

rm(list = ls())

library("cluster")
library("Hmisc")

require("igraph")

source('src/pv.R')
source('src/sc.R')
source('src/matFDR.R')

minSlopeP = 2
maxSlopeP = 10
minClusters = 2
maxClusters = 16

for (slopeP in minSlopeP:maxSlopeP) {
  sils = list()
  for (numClusters in minClusters:maxClusters) {
    print(paste(c("Running to ", numClusters, " clusters and slope p=", slopeP), sep="", collapse=""))
    source("labels.R")
    source("silhueta.R")
  }

  source("slope.R")
  numClusters = bestClusterSize

  source("labels.R")
  source("clusters.R")
  source("binariza.R")
  source("grafo.R")
}
