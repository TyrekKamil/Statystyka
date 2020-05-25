install.packages("VGAM")
library(VGAM)
load(url("http://ls.home.amu.edu.pl/data_sets/Centrala.RData"))
### Zadanie 2 #
# 2 #
Centrala

mean(Centrala$Liczba)

probs <- dpois(x = 0:5, lambda=mean(Centrala$Liczba))
counts <- matrix(c(prop.table(table(Centrala$Liczba)), probs), nrow = 2, byrow = TRUE)
rownames(counts) <- c("empiryczny", "teoretyczny")
colnames(counts) <- sort(unique(Centrala$Liczba))
counts

# wykres slupkowy 
barplot(
  prop.table(Centrala),
  xlab = "Liczba błędów", 
  ylab = "Prawdopodobieństwo",
  main = "Rozkład empiryczny liczby błędów"
)

barplot(
  probs, 
  names.arg = 0:5,
  xlab = "k", 
  ylab = "P(X=k)", 
  main = "Funkcja prawdopodobieństwa"
)

both <- rbind(rozklad_centrali, rozklad_poissona)
barplot(both,beside=T)


qq_1 = matrix(
  c(rozklad_centrali), 
  nrow = 1, 
  byrow = TRUE
)

qq_2 = matrix(
  c(probs), 
  nrow = 1, 
  byrow = TRUE
)

qqplot(qq_1, qq_2)
qqline(qq_1, distribution = function(qq_2) { qpois(qq_2, lambda = mean(Centrala$Liczba)) })

### Zadanie 4 #
wiatr = c(0.9, 6.2, 2.1, 4.1, 7.3, 1.0, 4.6, 6.4, 3.8, 5.0, 2.7, 9.2, 5.9, 7.4, 3.0, 4.9, 8.2, 5.0, 1.2, 10.1, 12.2, 2.8, 5.9, 8.2, 0.5)

enw = mean(wiatr^2)

hist(
  wiatr, 
  xlab = "Czas oczekiwania na tramwaj", 
  main = "Rozkład empiryczny czasu oczekiwania na tramwaj",
  probability = TRUE, 
  col = "lightgreen"
)

# empiryczny
lines(
  density(wiatr), 
  col = "red", 
  lwd = 2
)

# teoretyczny
lambda <- enw
curve(
  VGAM::drayleigh(x, sqrt(enw)), 
  col = "blue", 
  add = TRUE, 
  lwd = 2
)