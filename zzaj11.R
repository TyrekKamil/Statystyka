### Zadanie 1 #
load(url("http://ls.home.amu.edu.pl/data_sets/liver_data.RData"))

data_set <- data.frame(liver_data$bilirubin, liver_data$ldh, liver_data$condition)
head(data_set)
# 1.1 
# Dopasuj model regresji logistycznej do tych danych. Jakie są wartości estymatorów współczynników regresji?
model1 <- glm(condition ~ bilirubin + ldh, data = liver_data, family = 'binomial')
# 1.2 
# Które współczynniki są statystycznie istotne w skontruowanym modelu? Jakie jest dopasowanie modelu?
# TODO odpowiedź

summary(model1)

# 1.3
# Czy model ten może być zredukowany za pomocą regresji krokowej?
# TODO odpowiedź
step(model1)

# 1.4 
# zinterperetuj wspolczynniki modelu
bilirubin <- exp(coef(model1[1]))[2]

ldh <- exp(coef(model1[1]))[3]

# 1.5
# Narysuj krzywą ROC i oblicz AUC dla modelu.
install.packages("ROCR")
library(ROCR)
pred1 <- prediction(model1$fitted.values, liver_data$condition)
plot(performance(pred1, "tpr", "fpr"), main = "Model 1")
performance(pred1, "auc")@y.values

# 1.6
# Dokonaj przedykcji zmiennej condition dla trzech pacjentów scharakteryzonych następująco: (bilirubin, ldh) = (0.9, 100), (2.1, 200), (3.4, 300). Zilustruj wyniki na wykresie.
liver_data_16 = data.frame(
  bilirubin = c(0.9, 2.1, 3.4),
  ldh = c(100, 200, 300)
)
predict_glm <- predict(model1, liver_data_16, type = 'response')


