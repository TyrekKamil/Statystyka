install.packages("agricolae")
library(PBImisc)
shapiro.test(lm(response ~ dose, data = vaccination)$residuals)
library(agricolae)

### Zadanie 1 #
dane <- read.table("http://ls.home.amu.edu.pl/data_sets/kontekst.txt")
colnames(dane) <- c("number", "context")
dane

# 1
aggregate(dane$number, list(WYNIK = dane$context), FUN = mean)
boxplot(
  number ~ context,
  data = dane
)

# 2
summary(
  aov(
    number ~ context,
    data = dane
  )
)

# 3
shapiro.test(
  lm(
    number ~ context,
    data = dane
  )
  $residuals
)$p.value

qqnorm(dane$number)
qqline(dane$number)

bartlett.test(number ~ context, data = dane)$p.value

fligner.test(number ~ context, data = dane)$
  
library(car)
leveneTest(number ~ context, data = dane)$Pr

leveneTest(number ~ context, data = dane, center = "mean")$Pr

# 4
model_aov <- aov(number ~ context, data = dane)
attach(dane)
pairwise.t.test(dane$number, dane$context, data = dane)
TukeyHSD(model_aov)
plot(TukeyHSD(model_aov))
HSD.test(model_aov, "context", console = TRUE)
SNK.test(model_aov, "context", console = TRUE)
LSD.test(model_aov, "context", p.adj = "holm", console = TRUE)
scheffe.test(model_aov, "context", console = TRUE)

# 5 TODO

### Zadanie 2 #
eys <- read.table("http://ls.home.amu.edu.pl/data_sets/Eysenck.txt", header = TRUE)[,c(2,3)]
colnames(dane) <- c("Wynik", "Instrukcja")

head(eys)

# 2
aggregate(eys$Wynik, list(data = eys$Instrukcja), FUN = mean)
boxplot(Wynik ~ Instrukcja, data = eys)

# 3

summary(
  aov(
    Wynik ~ Instrukcja,
    data = eys
  )
)

# 4
shapiro.test(
  lm( Wynik ~ Instrukcja,
      data = eys
  )$residuals
)$p.value

qqnorm(eys$Wynik)
qqline(eys$Wynik)

bartlett.test(Wynik ~ Instrukcja, data = eys)$p.value
fligner.test(Wynik ~ Instrukcja, data = eys)$p.value
leveneTest(Wynik ~ Instrukcja, data = eys)$Pr
leveneTest(Wynik ~ Instrukcja, data = dane, center = "mean")$Prn

# 5 
attach(eys)
pairwise.t.test(Wynik, Instrukcja, data = eys)

model_aov <- aov(Wynik ~ Instrukcja, data = eys)

TukeyHSD(model_aov)

library(agricolae)
HSD.test(model_aov, "Instrukcja", console = TRUE)

SNK.test(model_aov, "Instrukcja", console = TRUE)

LSD.test(model_aov, "Instrukcja", p.adj = "holm", console = TRUE)

scheffe.test(model_aov, "Instrukcja", console = TRUE)


# 6 TODO