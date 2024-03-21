library(fma)   #library of datasets
library(forecast)
data(beer)     #loads the time series data beer
#lets see the data

beer
#plot of data
autoplot(beer)
# simple exponential smoothing using alpha at .1, .5, and .9
# Which one has the lowest RMSE?

beer1 <- ses(beer,h=25, level=c(80,95), alpha = .1 )
beer1
summary(beer1)
autoplot(beer1)
autoplot(beer1)
