library(SparkR, lib.loc = "/usr/local/spark/R/lib")
Sys.setenv('SPARKR_SUBMIT_ARGS'='"--packages" "com.databricks:spark-csv_2.11:1.4.0" "sparkr-shell"')
sc <- sparkR.init(master = "", appName = "SparkR",
                  sparkHome = "/usr/local/spark", sparkEnvir = list(),
                  sparkExecutorEnv = list(), sparkJars = "", sparkPackages = "com.databricks:spark-csv_2.11:1.4.0")
sqlContext <- sparkRSQL.init(sc)
interactions_data <- read.df(sqlContext, "data/interactions-v01.csv", source = "com.databricks.spark.csv")
impressions <- read.df(sqlContext, "data/impressions-v02.csv", source = "com.databricks.spark.csv")
items <- read.df(sqlContext, "data/items_v01_fixed.csv", source = "com.databricks.spark.csv")
region <- read.df(sqlContext, "data/regions.csv", source = "com.databricks.spark.csv")
impressions <- read.df(sqlContext, "data/impressions-v02.csv", source = "com.databricks.spark.csv")
users <- read.df(sqlContext, "data/users_v01_fixed.csv", source = "com.databricks.spark.csv")

head(users)
summary(users)
head(users)

