# Zadanie 1 ###
# 1.1
ankieta <- read.table("http://ls.home.amu.edu.pl/data_sets/ankieta.txt", header = TRUE, check.rows=)
ankieta
# 1.2
tabelka = data.frame(cbind(liczebnosc = table(ankieta$wynik),
                 procent = prop.table(table(ankieta$wynik))))
tabelka
# 1.3
data.frame(cbind(liczebnosc = table(ankieta$wynik[ankieta$szkola=='p']),
                 procent = prop.table(table(ankieta$wynik[ankieta$szkola=='p']))))


# 1.4
barplot(table(ankieta$wynik),
        xlab = "Odpowiedzi", ylab = "Liczebnosc",
        main = "Rozkład empiryczny zmiennej wynik")

barplot(prop.table(table(ankieta$wynik)),
        xlab = "Odpowiedzi", ylab = "Prawdopodobienstwo",
        main = "Rozkład empiryczny zmiennej wynik")

pie(table(ankieta$wynik))

# 1.5

barplot(prop.table(table(ankieta$wynik[ankieta$plec == 'm'])),
        xlab = "Odpowiedzi", ylab = "Prawdopodobienstwo",
        main = "Rozkład empiryczny zmiennej wynik [MĘŻCZYŹNI]")


barplot(prop.table(table(ankieta$wynik[ankieta$plec == 'k'])),
        xlab = "Odpowiedzi", ylab = "Prawdopodobienstwo",
        main = "Rozkład empiryczny zmiennej wynik [KOBIETY]")

# Zadanie 2 ###
# 2.1
load(url("http://ls.home.amu.edu.pl/data_sets/Centrala.RData"))
head(Centrala)
# 2.2
data.frame(cbind(liczebnosc = table(Centrala$Liczba),
                           procent = prop.table(table(Centrala$Liczba))))
# 2,3
barplot(table(Centrala$Liczba),
        xlab = "Liczba zgloszen", ylab = "Liczebnosc",
        main = "Rozkład empiryczny zmiennej wynik")

barplot(prop.table(table(Centrala$Liczba)),
        xlab = "Liczba zgloszen", ylab = "Prawdopodobienstwo",
        main = "Rozkład empiryczny zmiennej wynik")

pie(table(Centrala$Liczba))

# 2.4
mean(Centrala$Liczba)
median(Centrala$Liczba)
sd(Centrala$Liczba)
sd(Centrala$Liczba)/mean(Centrala$Liczba)*100

# Zadanie 3 ###
predkosc = c(0.9, 6.2, 2.1, 4.1, 7.3, 1.0, 4.6, 6.4, 3.8, 5.0, 2.7, 9.2, 5.9, 7.4, 3.0, 4.9, 8.2, 5.0, 1.2, 10.1, 12.2, 2.8, 5.9, 8.2, 0.5)
data.frame(cbind(liczebnosc = table(cut(predkosc, breaks = seq(0, 14, 2))),
                 procent = prop.table(table(cut(predkosc, breaks = seq(0, 14, 2))))))

hist(predkosc, 
     xlab = "Srednia predkosc wiatru", 
     main = "Rozkład empiryczny",
     probability = TRUE, 
     col = "lightgreen")
rug(jitter(predkosc))
lines(density(predkosc), lwd = 2)

boxplot(predkosc, 
        ylab = "Srednia predkosc wiatru", 
        main = "Rozkład empiryczny")
