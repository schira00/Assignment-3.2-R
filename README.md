# Assignment 3.2 R 


## Question 3.2 R.1

### Function remind me: 
The `remind_me` function returns a reminder message about buying groceries.

```R
remind_me <- function(){
  reminder <- "Remember to buy groceries: Eggs, Milk, Chicken, Bannas"
  return(reminder)
}

remind_me()
```


### Function cheat:
The `cheat` function shows you the results for certain programming exercises that you want to cheat on. 

```
cheat <- function(exercise){
  if(exercise == "exercise 1"){
    result <- "grades <- grade(n = 64, mean = 6, sd = 2, name = grade, digits = 2),
                 histogram <- hist(grades)"
    
  } else if(exercise == "exercise 2"){
    result <- "c(schipol <- read.csv(url(https://bit.ly/3GLVQ86)),
                min_temp <- schipol$TMIN,
                time <- schipol$DATE,
                plot(time, min_temp, main=Scatterplot Example,
                     xlab=time, ylab=temp))"
    
  } else if(exercise == "exercise 6"){
    result <- "(chick_weight <- ChickWeight 
                
                ChickWeight$Chick 
                
                max_weight <- aggregate(x = weight ~ Chick, 
                                        FUN = max, 
                                        data = ChickWeight) 
                
                max_weight$Chick <- factor(max_weight$Chick, levels = c(1, 20, 5, 40, 19)) 
                
                subset <- subset(max_weight, Chick %in% c(1, 20, 5, 40, 19)) 
                
                ggplot(data=subset, aes(x=Chick, y=weight))  + 
                  geom_bar(stat = identity) + 
                  labs(x = Chick, y = max_weight))"
  }
  return(result)
}


cheat("exercise x")
```

## Question 3.2 R.2
The `make_art` function allows R to make art without using the aRtsy package. 

```
install.packages("DescTools")
library(DescTools)

install.packages("plotrix")
library("plotrix")


make_art <- function(x){
set.seed(x)
  plot(1, type = "n", xlab = "", ylab = "", xlim = c(0, 15), ylim = c(0, 15))
  
  for(i in 1:20){
    radius <- runif(1, 0.3, 1.5)
    a <- runif(1, 0, 11)
    b <- runif(1, 0, 11)
    color <- rgb(runif(1), runif(1), runif(1))
    symbols(a, b, circles = radius, inches = 0.1, add = TRUE, bg = color, fg = NULL)
  }
  
  for(i in 1:10){
    a1 <- runif(1, 0, 12)
    a2 <- runif(1, 0, 12)
    b1 <- runif(1, 0, 10)
    b2 <- runif(1, 0, 10)
    col <- rgb(runif(1), runif(1), runif(1))
    lines(c(a1, a2), c(b1, b2), col = col, lwd = 2)
    
  }
  
  for(i in 1:5){
    xleft <- runif(1, 4, 7)
    ybottom <- runif(1,6, 7)
    xright <- runif(1, 3, 7)
    ytop <- runif(1, 5, 7)
    col <- rgb(runif(1), runif(1), runif(1))
    rect(xleft, ybottom, xright, ytop, density = NULL, angle = 45,
         col = col, border = NULL, lty = par("lty"), lwd = par("lwd"))
  }
  
}

make_art(x)
```
