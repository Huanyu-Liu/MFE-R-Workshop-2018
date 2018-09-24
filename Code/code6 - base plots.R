# Plotting
    data(mtcars)

    # basic scatterplot
    plot(x=mtcars$wt, y=mtcars$mpg)
    
    # labeling axes and the title
    plot(x=mtcars$wt, y=mtcars$mpg,
         xlab = "Vehicle Weight",
         ylab = "Miles per Gallon",
         main = "My First Plot")
    
    # change the point character, color, and size
    plot(x=mtcars$wt, y=mtcars$mpg,
         col = "red", pch = 19, cex = 2.5)
    
    # change the axis limits
    plot(x=mtcars$wt, y=mtcars$mpg,
         xlim = c(-10, 10), 
         ylim = c(0, 100))

    # add a line to a plot
    plot(x=mtcars$wt, y=mtcars$mpg)
    
        out <- lm(mpg ~ wt, data=mtcars)    
        coef(out)
        
    abline(coef(out), col="red")
    
    # put it together
    plot(x = log(mtcars$wt), 
         y = mtcars$mpg,
         xlab = "Log Vehicle Weight",
         ylab = "Miles per Gallon",
         main = "Plot with Reg Line",
         pch  = 19,
         col  = "dodgerblue4",
         xlim = c(0,2),
         ylim = c(0, 40))

    out <- lm(mpg ~ log(wt), data=mtcars)
    abline(coef(out), col="red", lwd=2)

    
    # color by number
    table(mtcars$cyl)
    as.factor(mtcars$cyl)
    as.integer(as.factor(mtcars$cyl))
    
    colvec <- c("red", "blue", "green")
    colvec[as.factor(mtcars$cyl)]
    
    plot(x = log(mtcars$wt), 
         y = mtcars$mpg,
         pch = 20,
         col = colvec[as.factor(mtcars$cyl)])
    
    mtcars$cyl <- as.factor(mtcars$cyl)
    
    fancy <- c("dodgerblue4", "firebrick", "seagreen4")
    
    plot(x = log(mtcars$wt), 
         y = mtcars$mpg,
         pch = 19,
         col = fancy[mtcars$cyl]
         )
    
# histograms
    
    somedata <- rnorm(1000, mean=3, sd=5)
    
    hist(somedata)
    
    hist(somedata, col="blue", border="grey", main="Title", xlab="Random Draws", ylab="", breaks=50)
    hist(somedata, col="blue", border="grey", main="Title", xlab="Random Draws", ylab="", breaks=-20:20)
    
    abline(v=3, col="red", lwd=3)
    
    text(3.1, 80, "True Mean = 3", col="red", pos=4)
    
## PROBLEM SET 6
    
    # Use the 'diamonds' dataset in the 'ggplot2' to make the following plot:
        # x is 'log(carat)'
        # y is 'log(price)'
        # color the points with a different color for each level of 'clarity'
        # use pch to change the point character to a filled-in circle
        # use cex to make the points small
        # be sure to label the x-axis and y-axis, and add a title
    
    # Run a regression of log(price) on log(carat) using the diamonds dataset and plot
    # the fitted regression line on the plot. Use lwd to make the line thicker and more noticeable.
    
    
    
    
    
    
    