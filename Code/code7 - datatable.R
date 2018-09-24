## Data Table

install.packages("data.table") # you only need to do this once
library(data.table)

# example data.table
    set.seed(9898)
    dt <- data.table(
        ints = sample(1:100, 100, T),
        lets = sample(letters, 100, T),
        caps = sample(LETTERS, 100, T)
    )
    
    str(dt)
    summary(dt)
    
# subset
    dt[1:4, .(caps, lets)]

# aggregate -- args take lists
    aggregate(dt$ints, by=list(dt$lets), mean)

    dt[ , .(newvar = mean(ints)), by=lets]
              