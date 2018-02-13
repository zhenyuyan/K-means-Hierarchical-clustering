 x = read.table(file.choose('Iris.DAT.txt'))
 dist(x)
 x$V5 <- NULL
 c1 = runif(3,4.3,7.9)
 c2 = runif(3,2,4.4)
 c3 = runif(3,1,6.9)
 c4 = runif(3,0.1,2.5)
 test = matrix(nrow = 3,ncol = 4)
 test[,1] = c1
 test[,2] = c2
 test[,3] = c3
 test[,4] = c4
 print(test)
 
 km.out = kmeans(x,test,algorithm = c("Lloyd"))
 print(km.out)

 print(km.out$withinss)

 print(sum(km.out$withinss))

 set.seed(817263)
 c1 = runif(3,4.3,7.9)
 c2 = runif(runif(3,2,4.4))
 c3 = runif(3,1,6.9)
 c4 = runif(3,0.1,2.5)
 test[,1] = c1
 test[,2] = c2
 test[,3] = c3
 test[,4] = c4
print( test)

print( sum(km.out$withinss))

 set.seed(98)
 c1 = runif(3,4.3,7.9)
 c2 = runif(runif(3,2,4.4))
 c3 = runif(3,1,6.9)
 c4 = runif(3,0.1,2.5)
 test[,1] = c1
 test[,2] = c2
 test[,3] = c3
 test[,4] = c4
print( test)
 
print( km.out)

print(sum(km.out$withinss))

 set.seed(789)
 c1 = runif(3,4.3,7.9)
 c2 = runif(3,2,4.4)
 c3 = runif(3,1,6.9)
 c4 = runif(3,0.1,2.5)
 test[,1] = c1
 test[,2] = c2
 test[,3] = c3
 test[,4] = c4
 km.out = kmeans(x,test,iter.max = 20,algorithm = c("Lloyd"))
 print(km.out)

 sum(km.out$withinss)
 print(test)
 
 hc.average=hclust(dist(x), method="average")
 plot(hc.average , main=" Average Linkage ", xlab="", sub ="", cex =.9)
 cutree(hc.average, 3)
 
 