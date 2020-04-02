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