data("mtcars")
plot(mtcars$qsec, mtcars$mpg, type = "l", col = "cyan", xlab = "qsec", ylab = "mpg", main = "Line Chart with Multiple Lines")
lines(mtcars$qsec, mtcars$qsec, col = "red")
