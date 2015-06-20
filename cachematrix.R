##  Put comments here that give an overall description of what your
##  functions do:
##
##      This is for the R Programming Course, Assignment 2.  The first
##      function below, makeCacheMatrix, creates a special "matrix" object
##      that can cache its inverse. Note that the inverse of a matrix is 
##      itself a matrix that when multiplied to the original matrix yields the identity matrix.
##
##  Write a short comment describing this function
##
##      The function returns a list of functions which:
##
##        1.  set the value of the matrix
##        2.  get the value of the matrix
##        3.  set the value of the inverse
##        4.  get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
 #set the value of the matrix
     Inv <- NULL
     set <- function(y) {
          x <<- y
          Inv <<- NULL
     }
 #get the value of the original matrix
     get <- function() x
 #set the value of the inverse matrix
     setInv <- function(solve) Inv <<- solve
 #get the value of the inverse
      getInv <- function() Inv
 #list out parts above 
     list(set = set, get = get,
          setInv = setInv,
          getInv = getInv)
}

## Write a short comment describing this function
##   The following function calculates the inverse  of the special matrix
##   created with the above function. It first checks to see if the
##   inverse has already been calculated. If so, it `get`s the inverse matrix from the
##   cache and skips the computation. Otherwise, it calculates the inverse matrix of
##   the original matrix and sets the value of the inverse matrix  in the cache via the `setInv`
##   function.

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     Inv <- x$getInv()
    
     #If the inverse matrix has already been calculated
      if(!is.null(Inv)) {
          message("getting cached data")
     # Get it from the cache with this part      
          return(Inv)
      }     
     # If the inverse matrix is not in the cache, then calculate it
     data <- x$get()
     Inv <- solve(data, ...)
    #sets the value of the cache
      x$setInv(Inv)
     Inv
}

