# FUNCTIONS


# example 1
    two_x_three_y <- function(x, y=5) {
        #defensive programming
        if(is.data.frame(x)) stop("No dataframes allowed!")
        
        # create new variables LOCAL to the function
        newvar <- 19
        
        # return something to the user
        return(2*x + 3*y)
    }
    
    two_x_three_y(x=2, y=1)
    two_x_three_y(4)
    two_x_three_y(x=data.frame(1:10), y=10)
    
    x <- 4
    two_x_three_y(x=x, y=1)
    
    y # error!
    newvar # error!

# example 2
    rm(list=ls())
    x_plus_y <- function(x=1, y=1) {
        stopifnot(is.numeric(x), is.numeric(y))
        
        # last calculation returned even without "return()"
        x + y
    }
    
    x_plus_y(3, 4)
    x_plus_y()
    
    x <- 10
    y <- 10
    x_plus_y() #2, not 20!

# example 3
    rm(list=ls())
    
    # bad practice!
    e3 <- function() x + 10
    
    x <- 5
    e3()
    
    x <- 15
    e3()

# example 4
    mm <- matrix(1:100, 10, 10)
    
    # how numbers are multiples of 3 per row
    apply(mm, 1, function(x) sum(x%%3==0))
    


# CONTROL STATEMENTS
    
    
    