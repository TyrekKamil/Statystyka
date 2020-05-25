# Zadanie 1 ####
x <- 1:5
i <- 1
w <- 1
while (i <= 5) {
  w <- x[i] * w 
  i <- i + 1
}
print(a)

i <- 1
r <- 1
repeat { 
  r <- r * x[i]
  if( i==5 ) {
    break
  }
  i <- i + 1
}
print(r)

f <- 1
for(i in 1:5) {
  f <- i * f
}
print(f)

# Zadanie 2 ####
l = 0
for(n in 1:100) {
  for(r in 1:n) { 
    x = (factorial(n)) /  (factorial(r) * factorial(n-r))
    if(x>1000000) {
      l <- 1 + l
    }
  }
}
print(l)

# Zadanie 3 ###
palindrom <- function(x) {
  for(i in 1:length(x)) { 
    if(x[i] != x[length(x)-i+1]) {
      return (FALSE)
    }
  }
  return (TRUE)
}
palindrom(c(1,2,3,3,2,1))
palindrom(c(1,2,3,3,2,2))


# zadanie 4 ###
radian <- function(x) {
  rad <- x * (pi/180)
  return (rad)
  }
radiany = c(radian(0), radian(30), radian(45), radian(60), radian(90))

ramka <- data.frame(
  sin = sin(radiany),
  cos = cos(radiany),
  tg = tan(radiany),
  ctg = 1/tan(radiany)
)

ramka

# zadanie 5 ###
mm <- function(x) {
  if(length(x) < 3) {
    stop("za krótki argument")
  }
  sort(x)
  result <- c(x[1], x[2], x[3], x[length(x)], x[length(x) - 1 ], x[length(x) - 2 ])
  return (result)
}
print(mm(c(1,2,3,4,5,6,7)))
print(mm(c(1,2)))