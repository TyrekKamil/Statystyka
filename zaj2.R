# zad 1 #### - patrz funkcja apply lapply
zad1 <- list(c("Kamil", "Tyrek"), 3.14, sqrt, seq(0.1:1, by=0.1))
zad1[c(1,3)] <- NULL
zad1
lapply(zad1, gamma)

# zad 2 ####
install.packages("Matrix")
library(Matrix)
(zad2 <- matrix(c(1,2,1, 5, 0, 2, 1, 5, 1), nrow=3, ncol=3))
rankMatrix(zad2)
det(zad2)
eigen(zad2)
zad2%*%solve(zad2) #???
rowSums(zad2)
rowMeans(zad2)
colSums(zad2)
colMeans(zad2)

# zad 3 ####
zad3 = factor((c(1:100)^2)%%10)
table(zad3)

# zad 4 ####
zad4 = outer(c(1:5),  c(1:5),  FUN=function(x, y) { paste(x, " * ",  y, " = ", x * y)})
zad4

# zad 5 ####
(zad5_1 = read.table("http://ls.home.amu.edu.pl/data_sets/dane1.csv", sep=";", header=TRUE))
# Z odczytanej ramki danych wyświetl tylko parzyste wiersze.
zad5_1[1]
# Korzystając z operatorów logicznych wyświetl tylko wiersze odpowiadające pacjentkom starszym niż 
# 50 lat z przerzutami do węzłów chłonnych (Wezly.chlonne = 1).

