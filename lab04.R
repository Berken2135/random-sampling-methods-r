#1a) Uniform[0,1] dağılımından 5000 örnek
set.seed(123)
x1 <- runif(5000, 0, 1) #runif ne işe yarar

#1b) Normal(100, 15) dağılımından 3000 örnek
x2 <- rnorm(3000, mean = 100, sd = 15) #mean ne yapar rnorm nedir

#1c) Histogram ve kernel density
# Yeni obje oluşturalım
data_obj1 <- list(
  hist_uniform = hist(x1, main="Histogram of Uniform", col="lightblue"),
  density_uniform = density(x1)
)

data_obj2 <- list(
  hist_normal = hist(x2, main="Histogram of Normal", col="lightblue"),
  density_normal = density(x2)
)

#Kernel density plot
plot(data_obj1$density_uniform, main="Kernel Density - Uniform")
plot(data_obj2$density_normal, main="Kernel Density - Normal")



#2a-i) Uniform[0,1] -> Zar (1–6)
set.seed(123) #set.seed nedir
u <- runif(600)
dice <- floor(u * 6) + 1    # 1–6 arası sayı üretme



#2a-ii) Ortalama ve varyans
mean(dice)
var(dice)

#2a-iii) Frekans tablosu
freq <- table(dice)
freq



#2a-iv) Data frame’e dönüştürme
df_freq <- as.data.frame(freq)
df_freq
var(df_freq$Freq)
p
set.seed(123)
dice2 <- sample(1:6, size=600, replace=TRUE)
dice2

#3-)
set.seed(123)

k <- c(0,1,2,3)
p <- c(0.15, 0.25, 0.50, 0.10)

x3 <- sample(k, size = 1000, replace = TRUE, prob = p)
table(x3)

#4-i) 100 Bin(10, 0.3)
set.seed(123)
bin_vals <- rbinom(100, size=10, prob=0.3)
bin_vals



#4-ii) 50 Geometric(p = 0.4)
#geometric R’da: P(X = k) = (1-p)^(k-1) * p   (success on trial k)
geo_vals <- rgeom(50, prob = 0.4) + 1   #çünkü rgeom 0’dan başlar → +1
geo_vals


#5a-i) İnverse CDF algoritması
rinv <- function(n) {
  u <- runif(n)
  x <- 2 * sqrt(u)
  return(x)
}




#5a-ii)200 realizasyon
set.seed(123)
x_inv <- rinv(200)
x_inv



#5b-i)Accept-Reject algoritması
rrej <- function(n) {
  out <- numeric(n)
  count <- 0
  while(count < n) {
    x <- runif(1, 0, 2)
    y <- runif(1, 0, 2)
    if(y <=x) {
      count <- count +1
      out[count] <- x
    }
  }
  return(out)
}

#5b-ii) 200 realizasyon
set.seed(123)
x_rej <- rrej(200)
x_rej