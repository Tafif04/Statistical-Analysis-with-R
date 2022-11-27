dt = read.csv("./dataset/iris_csv.csv")
print(head(dt))

mean(dt$sepallength, na.rm=TRUE)

mean(dt$sepallength)

median(dt$sepallength, na.rm = TRUE)

median(dt$sepallength)

mode = function(x){
    uniqx = unique(x)
    uniqx[which.max(tabulate(match(x, uniqx)))]
}

mode(dt$sepallength)
