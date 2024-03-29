# Assignment 3.2 R - Schira von Oppen (12665991)


# Question 3.2 R.1

# Function remind me: 

remind_me <- function(){
  reminder <- "Remember to buy groceries: Eggs, Milk, Chicken, Bannas"
  return(reminder)
}

remind_me()

# Function cheat:

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


cheat("exercise 2")

# Link:
# https://github.com/schira00/Assignment-3.2-R/blob/main/Assignment%203.2.R.R


# Question 3.2 R.2

install.packages("DescTools")
library(DescTools)

install.packages("plotrix")
library("plotrix")

make_art <- function(x){
  set.seed(x)
  plot(1, type = "n", xlab = "", ylab = "", xlim = c(0, 10), ylim = c(0, 10))
  
  for(i in 1:20){
    radius <- runif(1, 0.3, 1.5)
    a <- runif(1, 0, 9)
    b <- runif(1, 0, 9)
    color <- rgb(runif(1), runif(1), runif(1))
    symbols(a, b, circles = radius, inches = 0.1, add = TRUE, bg = color, fg = NULL)
  }
  
  for(i in 1:10){
    a1 <- runif(1, 0, 7)
    a2 <- runif(1, 0, 7)
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

make_art(123)

# https://github.com/schira00/Assignment-3.2-R/blob/main/README.md

