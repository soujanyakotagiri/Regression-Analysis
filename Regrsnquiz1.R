#Coursera - Regression Models - Quiz1
#Consider the dataset given below :

#x <- c(0.18, -1.54, 0.42, 0.95) and w <- c(2, 1, 3, 1).Give the value of ?? tha minimizes 
#the least squares equation :
#??ni=1wi???(xi?????)2  

#solution

x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)
 
y <- sum(x*w)/sum(w)
y
#The p-value that we are looking for is then : 0.1471.


#2.Consider the following dataset :

#x <- c(0.8, 0.47, 0.51, 0.73,0.36,0.58,0.57,0.85,0.44,0.42)
#y <- c(1.39, 0.72, 1.55, 0.48, 1.19,-1.59,1.23,-0.65,1.49,0.05)

#Fit the regression to the origin and get the slope of treating Y as the outcome and x as the regressor. 
#(Hint, do not center the data since we want regression through the origin and not through the means of data).

#solution:

x <- c(0.8, 0.47, 0.51, 0.73,0.36,0.58,0.57,0.85,0.44,0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19,-1.59,1.23,-0.65,1.49,0.05)

fit <- lm(y~x) #since y is outcome
summary(fit)  #look for x in estimate under coefficients or fit$coefficients
fit$coefficients

#3.Do data(mtcars) from the datasets package and fit the regression model with mpg as the outcome and weight as the predictor. 
#Give the slope coefficient

library(datasets)
fit1 <- lm(mpg~wt, mtcars)
summary(fit1)

#4.Consider data with an outcome Y and a predictor X. The standard deviation of the predictor is one half that of 
#the outcome. The correlation between the two variables is 0.5. What value would the slope coefficient for the 
#regression model with Y as the outcome and X as the regressor ?

#solution:
#given
#cor(x,y) = 0.5 ;   sd(x) = 0.5* sd(y)

# we know Beta(slope) = cor(x,y)*sd(y)/sd(x)


# Beta = 0.5*sd(y)/0.5*sd(y)
#therefore, the slope coefficient is one

#5.Students were given two hard tests and scores were normalized to have empirical mean 0 and variance 1. The 
#correlation between the scores on the two tests was 0.4. What would be the expected score on quiz 2 for a student 
#who had a normalized score of 1.5 on quiz 1 ?

#As the scores are normalized we need to multiply the correlation with the score of quiz1(predictor or regressor) to
#obtain quiz2(outcome) i.e 0.4* 1.5 = 0.6

#6. Consider the data given by the following :
#x <- c(8.58, 10.46, 9.01, 9.64,8.86) 
#What would be the value of the first measurement if x were normalized (to have mean 0 and variance 1) ?

#solution:
x <- c(8.58, 10.46, 9.01, 9.64,8.86)
y <- (x- mean(x))/sd(x)
y

#7.Consider the following dataset (used above as well).What is the intercept for fitting the model with x as the 
#predictor and y as the outcome ?

x <- c(0.8, 0.47, 0.51, 0.73,0.36,0.58,0.57,0.85,0.44,0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19,-1.59,1.23,-0.65,1.49,0.05).

fit2 <- lm(y ~ x)
summary(fit2)
fit2$coefficients[1]

#9.Consider the data given by
#.What value minimizes the sum of the squared distances between these points and itself?

x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)

#solution:
#we know that mean minimises the equation

y <- mean(x)
y

#10.Let the slope having fit Y as the outcome and X as the predictor be denoted as ??1. Let the slope from fitting X as the outcome and Y as 
#the predictor be denoted as ??1.suppose you divide ??1 by ??1;in other words consider ??1/??1. What is this ratio always equal to?

#solution: 

 ??1/??1 = (cor(x,y)* sd(y)/sd(x))/(cor(y,x)* sd(x)/sd(y))

 sd(y)/ sd(x) * sd(y)/sd(x) = (sd(y)/sd(x))^2

 var(y)/var(x)
 
 

  
  
  
   