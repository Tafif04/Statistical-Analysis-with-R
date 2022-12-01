dt = read.csv("./dataset/iris_csv.csv")
print(head(dt))

library(moments)

#Option 1 using function skewness in R
round(skewness(dt$sepallength),3)

#Option 2 using manual
SKEWNESS = function(x){
    N = length(x)
    up = NULL
    for(i in 1:N){
        up[i] = (x[i]-mean(x))^3
    }
    hasil = sum(up)/((N-1)*(sd(x)^3))
    hasil = round(hasil,3)
    return(hasil)
}

SKEWNESS(dt$sepallength)

round(skewness(dt$sepalwidth),3)

SKEWNESS(dt$sepalwidth)

#Option 1 using function kurtosis in R
round(kurtosis(dt$sepallength),3)

#Option 2
KURTOSIS = function(x){
    N = length(x)
    up = NULL
    for(i in 1:N){
        up[i] = (x[i]-mean(x))^4
    }
    hasil = sum(up)/((N)*(sd(x)^4))
    hasil = round(hasil,3)
    return(hasil)
}

KURTOSIS(dt$sepallength)
