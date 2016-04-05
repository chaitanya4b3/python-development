library(plotly)
housing <- read.csv("landdata-states.csv")
#hist(housing$Home.Value)
head(housing)
plot(Home.Value ~ Structure.Cost,
     data=subset(housing, State == "MA"))
points(Home.Value ~ Structure.Cost, col="red",
       data=subset(housing, State == "TX"))
