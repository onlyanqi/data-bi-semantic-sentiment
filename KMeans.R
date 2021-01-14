mydata = read.csv("timestamp1.csv")
mydata <- na.omit(mydata)
mydata <- scale(mydata) 

wss <- (nrow(mydata)-1)*sum(apply(mydata,2,var))
for (i in 2:15) wss[i] <- sum(kmeans(mydata,
                                     centers=i)$withinss)
plot(1:15, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")

fit2 <- kmeans(mydata, 2)

library(cluster)
clusplot(mydata, fit2$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)

install.packages("fpc")
library(fpc)
plotcluster(mydata, fit2$cluster)

fit3 <- kmeans(mydata, 3)
clusplot(mydata, fit3$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)
plotcluster(mydata, fit3$cluster)

fit4 <- kmeans(mydata, 4)
plotcluster(mydata, fit4$cluster)
clusplot(mydata, fit4$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)

fit5 <- kmeans(mydata, 5)
clusplot(mydata, fit5$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)
plotcluster(mydata, fit5$cluster)

fit6 <- kmeans(mydata, 6)
clusplot(mydata, fit6$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)
plotcluster(mydata, fit6$cluster)

fit7 <- kmeans(mydata, 7)
clusplot(mydata, fit7$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)
plotcluster(mydata, fit7$cluster)

fit8 <- kmeans(mydata, 8)
clusplot(mydata, fit8$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)
plotcluster(mydata, fit8$cluster)

d <- dist(mydata, method = "euclidean")
cluster.stats(dist(mydata), fit8$cluster)
cluster.stats(dist(mydata), fit7$cluster)
cluster.stats(dist(mydata), fit6$cluster)
cluster.stats(dist(mydata), fit5$cluster)
cluster.stats(dist(mydata), fit4$cluster)
cluster.stats(dist(mydata), fit3$cluster)
cluster.stats(dist(mydata), fit2$cluster)

fit2$centers
fit3$centers
fit4$centers
fit5$centers
fit6$centers
fit7$centers
fit8$centers
