### Zadanie 2 #
dane = load(url("http://ls.home.amu.edu.pl/data_sets/Centrala.RData"))
mean(Centrala$Liczba)

props <- ppois(Centrala$Liczba, lambda = 5)
counts <- matrix(c(prop.table(table(Centrala$Liczba)), probs), nrow = 2, byrow = TRUE)
rownames(counts) <- c("empiryczny", "teoretyczny")
colnames(counts) <- sort(unique(Centrala$Liczba))
counts
