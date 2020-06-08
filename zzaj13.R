### Zadanie 1 #
# W powyższym przykładzie do analizy składowych głównych zostały wykorzystane wszystkie zmienne. 
#Jednak jedna z nich jest bardzo słabo skorelowana z pozostałymi. 
#Ustal tę zmienną, a następnie wykonaj poniższe polecenia bez jej uzwględnienia:

# 1.1
# Dokonaj analizy składowych głównych.

shapiro.test(USArrests$Murder)$p.value
shapiro.test(USArrests$Assault)$p.value
shapiro.test(USArrests$UrbanPop)$p.value
shapiro.test(USArrests$Rape)$p.value
# UrbanPop odstaje od innych
arrests <- subset(USArrests, select=c(Murder, Assault, Rape))
pca <- prcomp(arrests, scale = TRUE)

# 1.2 
# Jaki procent wariancji tłumaczony jest przez poszczególne składowe?
summary(pca)

# 1.3
# Wyznacz współrzędne obserwacji w nowym układzie współrzędnych utworzonym przez składowe główne.
head(pca$x)

# 1.4
# Dokonaj interpretacji ładunków i zilustruj je na wykresie.
head(pca$rotation,)
# TODO wykres

# 1.5
# Narysuj wykres osypiska i zaproponuj optymalną liczbę składowych głównych w oparciu o trzy kryteria.
pca$sdev^2
apply(pca$x, 2, var)
plot(pca)

# 1.6
# Przedstaw stany w układzie dwóch pierwszych składowych głównych (dokładniej narysuj biplot i dokonaj jego interpretacji).
biplot(pca)

# 1.7
# Przedstaw stany za pomocą minimalnego drzewa rozpinającego.
install.packages("ape")
library(ape)
plot(mst(dist(arrests)), x1=pca$x[, 1], x2 = pca$x[, 2])

### Zadanie 2 #
#  Zbiór danych mtcars zawiera informacje na temat 32 samochodów z roku 1974.
# 2.1
# Dokonaj analizy składowych głównych biorąc pod uwagę cechy: mpg, disp, hp, drat, wt, qsec.
cars <- subset(mtcars, select = c(mpg, disp, hp, drat, wt, qsec))
pca2 <- prcomp(cars, scale = TRUE)

# 2.2
# Jaki procent wariancji tłumaczony jest przez poszczególne składowe?
summary(pca2)

# 2.3
# Wyznacz współrzędne obserwacji w nowym układzie współrzędnych utworzonym przez składowe główne.
head(pca2$x)

# 2.4
# Dokonaj interpretacji ladunkow i zilustruj je na wykresie
head(pca2$rotation)
plot(pca2$rotation)
# TODO wykres

# 2.5
# Narysuj wykres osypiska i zaproponuj optymalną liczbę składowych głównych w oparciu o trzy kryteria.
pca2$sdev^2
apply(pca2$x, 2, var)
plot

# 2.6 
# Przedstaw samochody w układzie dwóch pierwszych składowych głównych (dokładniej narysuj biplot i dokonaj jego interpretacji).
biplot(pca2)

# 2.7
# Przedstaw samochody za pomocą minimalnego drzewa rozpinającego.
plot(mst(dist(cars)), x1 = pca2$x[, 1], x2 = pca2$x[, 2])

# 2.8
# wywalic sobie scale i odpalic j/w