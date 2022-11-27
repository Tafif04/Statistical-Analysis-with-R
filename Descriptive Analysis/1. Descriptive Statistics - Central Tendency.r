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

central_tendency = function(x){
    kolom = ncol(x)
    Mean = NULL
    Median = NULL
    Mode = NULL
    for(i in 1:kolom){
        Mean[i] = round(mean(x[,i]),3)
        Median[i] = round(median(x[,i]),3)
        Mode[i] = round(mode(x[,i]),3)
    }
    baris = cbind(Mean, Median, Mode)
    colnames(baris) = c("MEAN", "MEDIAN", "MODE")
    rownames(baris) = names(x)
    print(baris)
}

central_tendency(dt[,c(1:4)])
