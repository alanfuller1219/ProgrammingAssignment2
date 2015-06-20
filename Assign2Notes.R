
#do a bit of testing with an invertible matrix

v2 <- c(3,3.2)
v3 <- c(3.5,3.6)
mat7 <- cbind(v2,v3)
dim(mat7)
solve(mat7)

#returns the following

> v2 <- c(3,3.2)
> v3 <- c(3.5,3.6)
> mat7 <- cbind(v2,v3)
> dim(mat7)
[1] 2 2
> solve(mat7)
[,1]  [,2]
v2   -9  8.75
v3    8 -7.50
> 

## Test using the functions created for Homework assignment 2
## Critical NOTE:  cacheSolve takes the output of makeCacheMatrix! 
## It does not run directly on the invertible matrix!
## this test is valid:
          
temp1 <- makeCacheMatrix(mat7)
cacheSolve(temp1)

> temp1 <- makeCacheMatrix(mat7)
> cacheSolve(temp1)
[,1]  [,2]
v2   -9  8.75
v3    8 -7.50     
     
## This is not a valid test, and returns an error:

makeCacheMatrix(mat7)
cacheSolve(mat7)


## Examples from TA Alan Due from the Discussion Forum:

 myvec <- c(1,2,3,4,5,6,7,8,9,10)

 
 
foo <- makeVector(myvec)
 foo$get()
[1]  1  2  3  4  5  6  7  8  9 10
class(foo)
[1] "list"
foo$getmean()
NULL

foo[1]
#returned the following
$set
function (y) 
{
     x <<- y
     m <<- NULL
}



fooE <- environment(foo$set)
fooE

ls(fooE)





