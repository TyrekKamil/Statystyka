# Zadanie 2 ####
zad2 = c(rep(TRUE, 3), rep(FALSE, 4), rep(TRUE, 2), rep(FALSE, 3))
zad2
zad2 <- zad2*1
zad2

# Zadanie 3 ####
zad3 = c(c(1:20), rep(0, 10), seq(2, lenghts.out = 20, by = 2))
zad3_1 = rev(zad2)
c(zad3, zad3_1)

# zadanie 4 ####
zad4 = c(letters[ seq(5, 25, by = 5)])
zad4

# zadanie 5 #### 
zad5 = c(1:1000)
zad5[x%%2==0] = 1 / x[x%%2==0]
zad5_1 = format(x, scientific = FALSE)
zad5_1

# zadanie 6 ####
zad6 = c(6, 3, 4, 5, 2, 3)
zad6[order(zad6, decreasing = TRUE)]

# zadanie 7 ####
zad7 = c(-1.876, -1.123, -0.123, 0, 0.123, 1.123, 1.876)
round(zad7, 2)
sign(zad7)
floor(zad7)

# zadanie 8 ####
zad8_1 = c(1:100000000)
zad8_czas1 <- Sys.time()
zad8_2 = (zad8_1)^(1/2)
zad8_czas2 <- Sys.time()
zad8_czas3 = zad8_czas2 - zad8_czas1
zad8_czas3
zad8_3 = sqrt(zad8_1)
zad8_czas4 = Sys.time()
zad8_czas4 - zad8_czas2

# zadanie 9 ####
install.packages("schoolmath")
library(schoolmath)
## after install ##
zad9_1 = primlist[primlist < 1000]
zad9_2 = primlist[length(zad9_1)]
zad9_3 = length(primlist[primlist > 100 & primlist < 500])

# zadanie 10 ####
zad10_1 = c('a', 'b')
zad10_2 = c('1','2','3')
zad10_3 = paste(rep(zad10_1, 3), rep(zad10_2), sep="")

# zadanie 11 ####
zad11_1 = c(1:30)
zad11_2 = c("X", "Y", "Z")
zad11_3 = paste(rep(zad11_1, 3), rep(zad11_2, 10), sep = ".")
