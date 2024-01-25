# Assignment 3.2 R - Schira von Oppen (12665991)


# Question 3.2 R.1

# Function remind me: 

remind_me <- function(){
  reminder <- "Remember to buy grocieries: Eggs, Milk, Chicken, Bannas"
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
                \
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


# Question 3.2 R.2

install.packages("DescTools")
library(DescTools)

dev.new(width=12, height=4)
Canvas(xlim = c(0,50), ylim=c(2, 6), asp=1, xpd=TRUE)
DrawCircle(x=plotdat$xcords, y=plotdat$ycords, r.out = 2)


make_art <- function(){
  
}



