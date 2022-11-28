dt = read.csv("./dataset/iris_csv.csv")
print(head(dt))

range(dt$sepallength, na.rm=TRUE)

#Option 1 using function range in R
RANGE = range(dt$sepallength, na.rm=TRUE)[2]-range(dt$sepallength, na.rm=TRUE)[1]
RANGE

#Option 2 using manual
RANGE2 = max(dt$sepallength) - min(dt$sepallength)
RANGE2

range(dt$sepallength)

RANGE2 = range(dt$sepallength)[2]-range(dt$sepallength)[1]
RANGE2

#Option 1 using function IQR in R
IQR(dt$sepallength, na.rm = TRUE)

#Option 2
IQR2 = function(data){
    Q3 = quantile(data, probs = .75)
    Q1 = quantile(data, probs = .25)
    cat('----------INTERQUARTILE RANGE----------\n')
    cat('Q1  =',Q1,'\n')
    cat('Q3  =',Q3,'\n')
    cat('---------------------------------------\n')
    cat('IQR =',Q3-Q1,'\n')
    cat('---------------------------------------')
}

IQR2(dt$sepallength)

IQR(dt$sepallength)

var(dt$sepallength)

#Option 1 using function sd in R
sd(dt$sepallength)

#Option 2 using manual
sqrt(var(dt$sepallength))

spread = function(x){
    kolom = ncol(x)
    Range = NULL
    IQR = NULL
    Var = NULL
    Std = NULL
    for(i in 1:kolom){
        Range[i] = round((range(x[,i])[2]-range(x[,i])[1]),3)
        IQR[i] = round(IQR(x[,i]),3)
        Var[i] = round(var(x[,i]),3)
        Std[i] = round(sd(x[,i]),3)
    }
    baris = cbind(Range, IQR, Var, Std)
    colnames(baris) = c("RANGE", "IQR", "VARIANCE", "STD. DEVIATION")
    rownames(baris) = names(x)
    print(baris)
}

spread(dt[,c(1:4)])
