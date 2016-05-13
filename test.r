require(ggplot2)


interactions_data <- read.csv("data/interactions-v01.csv")
impressions <- read.cs("data/impressions-v02.csv")
items <- read.csv("data/items_v01_fixed.csv")
region <- read.csv("data/regions.csv")
impressions <- read.csv("data/impressions-v02.csv")
users <- read.csv("data/users_v01_fixed.csv")
head(users)
summary(users)
head(users)

head(users)

users <- users[ == is.null(users$career_level),]
plot(users$career_level)

users
