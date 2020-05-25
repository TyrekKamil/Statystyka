#install.packages("dplyr")
#install.packages("ggpubr")
#library("dplyr")
#library("ggpubr")
install.packages("UsingR")
library(UsingR)
### Zadanie 1 #
x <- c(862, 870, 876, 866, 871, 865, 861, 873, 871, 872)
shapiro.test(x)$p.value
mean(x)
t.test(x, mu = 870, alternative = "less")$p.value

### Zadanie 2 #
data_A <- c(78.2, 78.5, 75.6, 78.5, 78.5, 77.4, 76.6)
data_B <- c(76.1, 75.2, 75.8, 77.3, 77.3, 77.0, 74.4, 76.2, 73.5, 77.4)

boxplot(data_A, data_B)
shapiro.test(data_A)$p.value
shapiro.test(data_B)$p.value
mean(data_A)
mean(data_B)
t.test(data_A, data_B, var.equal = TRUE, alternative = 'greater')$p.value
var(data_A)
var(data_B)
var.test(data_A, data_B, alternative = 'less')$p.value

### Zadanie 3 #
data_przed <- c(84, 87, 87, 90, 90, 90, 90, 93, 93, 96)
data_po <- c(89, 92, 98, 95, 95, 92, 95, 92, 98, 101)

boxplot(data_przed, data_po)

shapiro.test(data_przed)$p.value
qqnorm(data_przed)
qqline(data_przed)

shapiro.test(data_po)$p.value
qqnorm(data_po)
qqline(data_po)

mean(data_przed)
mean(data_po)

t.test(data_po, data_przed, alternative = 'greater', paired = TRUE)$p.value


### Zadanie 4 #
wzrost_m <- c(171, 176, 179, 189, 176, 182, 173, 179, 184, 186, 189, 167, 177)
wzrost_k <- c(161, 162, 163, 162, 166, 164, 168, 165, 168, 157, 161, 172)

boxplot(wzrost_m, wzrost_k)

shapiro.test(wzrost_m)$p.value
qqnorm(wzrost_m)
qqline(wzrost_m)

shapiro.test(wzrost_k)$p.value
qqnorm(wzrost_k)
qqline(wzrost_k)

mean(wzrost_m)
mean(wzrost_k)

t.test(wzrost_m, wzrost_k, alternative = 'greater')$p.value

var(wzrost_m)

var(wzrost_k)

var.test(wzrost_m, wzrost_k, var.equal = TRUE, alternative = 'greater')$p.value

### Zadanie 5 # TODO