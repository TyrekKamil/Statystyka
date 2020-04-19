
library(EnvStats)
### Zadanie 1 #
load(url("http://ls.home.amu.edu.pl/data_sets/Centrala.RData"))

epois(Centrala$Liczba, ci = TRUE)$interval$limits
epois(Centrala$Liczba, ci.method = "pearson.hartley.approx", ci = TRUE)$interval$limits
epois(Centrala$Liczba, ci.method = "normal.approx", ci = TRUE)$interval$limits

### Zadanie 2 #
tabela <- read.table("http://ls.home.amu.edu.pl/data_sets/awarie.txt")
tabela$V1
enorm(tabela$V1, ci=TRUE)$interval$limits
# ^ dobry model, do dokonczenia
