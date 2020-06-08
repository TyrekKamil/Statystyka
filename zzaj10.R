install.packages("Hmisc")
library("Hmisc")
### Zadanie 1 #
auto <- read.csv("http://ls.home.amu.edu.pl/data_sets/Automobile.csv", na="?")
head(auto)
# 1.1
auto <- na.omit(auto)

# 1.2
autoTemp = subset(
  auto, 
  select=c(
    "horsepower", 
    "city.mpg", 
    "peak.rpm", 
    "curb.weight", 
    "num.of.doors", 
    "price"
  )
)

#Dopasuj model regresji liniowej do tych danych.
pairs(autoTemp)
model_auto_l <- lm(price ~ ., data = autoTemp)
model_auto_l
#Jakie są wartości estymatorów współczynników regresji i przedziały ufności? Które zmienne są stymulantami a które destymulantami?
coef(model_auto_l)
confint(model_auto_l)
#Które współczynniki są statystycznie istotne w skontruowanym modelu? Jakie jest dopasowanie modelu?
summary(model_auto_l)
#Oblicz wartości dopasowane przez model oraz wartości reszt.
fitted(model_auto_l)
#reszty
residuals(model_auto_l)

# 1.3 Spróbuj zredukować model korzystając z regresji krokowej (“backward”, “forward”, AIC, BIC).
model2 = lm(price ~ 1, data = auto)


step(model_auto_l)
step(model_auto_l, direction="backward")
step(model2, direction = "forward", scope=formula(model_auto_l))
step(model2, direction = "forward", scope=formula(model_auto_l), k=log(nrow(auto)))

# 1.4
# Dokonaj redukcji modelu metodą eliminacji wstecznej, tak aby w kolejnych krokach z pełnego modelu stopniowo usuwać najmniej istotną zmienną niezależną, aż otrzymamy model ze wszystkimi istotnymi zmiennymi niezależnymi. Jakie było zachowanie odpowiedniego współczynnika determinacji w kolejnych modelach?
model_2 <- lm(price ~ horsepower + city.mpg + curb.weight + num.of.doors, data = auto)
summary(model_2)$coefficients
summary(model_2)$adj.r.squared

model_2 <- lm(price ~ horsepower + curb.weight + num.of.doors, data = auto)
summary(model_2)$coefficients
summary(model_2)$adj.r.squared

model_2 <- lm(price ~ horsepower + curb.weight, data = auto)
summary(model_2)$coefficients
summary(model_2)$adj.r.squared

# 1.5
# Zamiast usuwać obserwacje z brakującymi danymi, jak to zrobiliśmy w punkcie 1, uzupełnij je za pomocą średniej i mediany sąsiednich wartości dla zmiennych ilościowych i porządkowych, odpowiednio. Aby to zrobić, użyj funkcji impute() dostępnej w pakiecie Hmisc. W przypadku takich danych postępuj zgodnie z instrukcjami w punktach 2-4.
autoTemp2 <- impute(autoTemp$symboling, autoTemp, fun=median)
auto2 <- impute(auto$symboling, auto$num.of.cylinders, auto, fun=median)
auto2
pairs(autoTemp2)
modelMean = lm(price ~ ., data = autoTemp2)
modelMean
# TODO 
# 1.6

model3 <- lm(price ~ horsepower + city.mpg + peak.rpm + curb.weight + num.of.doors, data = autoTemp)

auto_2 <- data.frame(
  Curb.Weight = 2823, 
  Horsepower = 154
)

predict(model_2, auto_2, interval = "prediction")
# TODO po 1.5
