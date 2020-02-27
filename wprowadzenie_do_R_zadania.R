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

# zadanie 6 #### do zrobienia
zad6 = c(6, 3, 4, 5, 2, 3)
order(zad6, decreasing = FALSE)
