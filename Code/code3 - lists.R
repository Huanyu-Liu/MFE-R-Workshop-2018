mylist <- list <- list(
    alpha = 1:10,
    beta = matrix(1:50, 10, 5),
    gamma = c("hi", "there")
)

# 3 ways to extract list elements
    mylist$alpha
    mylist[[1]]
    mylist[1]
    
    class(mylist$alpha) # int
    class(mylist[[1]])  # int
    class(mylist[1])    # list <--- watch out!

    mylist$beta[4,3]
    mylist[["beta"]][4,3]
    mylist["beta"][4,3] #error -- can't subset list with [x,y]
    
    length(mylist)
    length(mylist[[1]])
    length(mylist[1])

# lapply and sapply
    newlist <- list(
        a = 1:10,
        b = 20:29,
        c = 100:150
    )
    
    mean(newlist[[1]])
    mean(newlist[[2]])
    mean(newlist[[3]])
    
    lapply(newlist, mean)
    sapply(newlist, mean)
    unlist(lapply(newlist, mean))




## PROBLEM SET 3
    
# Consider 2 familes, the Wong family and the Kim family.  Each has a different number of 
# children and each member has a different name.  The Wong family has one child named "Golf", 
# while the Kim family has three children named "Alpha", "Bravo", and "Charlie".
    
    # Create a list structure that stores the information of the children's names for the two
    # familes, and then write code that determines the number of children in each family.
    
# I use split to make a list below.  
# Use an `apply` function to find the mean of each list element of xx
    xx <- split(matrix(1:100, 10, 10), 1:10)


