# IMPORT DATASET
dt = read.csv("./dataset/iris_csv.csv")
print(head(dt))
# MEAN: SEPAL LENGTH (with NA)
mean(dt$sepallength, na.rm=TRUE)
# MEAN: SEPAL LENGTH (without NA)
mean(dt$sepallength)

# MEDIAN: SEPAL LENGTH (with NA)
median(dt$sepallength, na.rm = TRUE)
# MEDIAN: SEPAL LENGTH (without NA)
median(dt$sepallength)

mode = function(x){
    uniqx = unique(x)
    uniqx[which.max(tabulate(match(x, uniqx)))]
}
#MODE: SEPAL LENGTH
mode(dt$sepallength)
