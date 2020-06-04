pairs(longley)
model_1 <- lm(Employed ~ ., data = longley)
model_1
coef(model_1)
