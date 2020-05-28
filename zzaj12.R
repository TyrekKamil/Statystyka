### Zadanie 1 #
data_set <- data.frame(mpg = mtcars$mpg, wt = mtcars$wt)
head(data_set)
plot(mtcars$mpg, mtcars$wt, xlab = "mt", ylab = "wt")
# 2
shapiro.test(mtcars$mpg)$p.value
qqnorm(mtcars$mpg)
qqline(mtcars$mpg)

shapiro.test(mtcars$wt)$p.value
qqnorm(mtcars$wt)
qqline(mtcars$wt)

# 3  TODO
cor.test(mtcars$mpg, mtcars$wt, method = "pearson")$p.value
cor.test(mtcars$mpg, mtcars$wt, method = "pearson")$conf.int
cor.test(mtcars$mpg, mtcars$wt, method = "pearson")$estimate

mean(mtcars$mpg)
# 4 TODO
cor.test(mtcars$mpg, mtcars$wt, method = "kendall")$p.value
cor.test(mtcars$mpg, mtcars$wt, method = "kendall")$estimate

cor.test(mtcars$mpg, mtcars$wt, method = "spearman")$p.value
cor.test(mtcars$mpg, mtcars$wt, method = "spearman")$estimate