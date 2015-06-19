## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this function is similar to the example function given.
#It accepts matrix variables, and lists that containing functions that 
#will actually calculate/retrieve and cache inverse matrices.

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
     get <- function() x
     setmatrix <- function(solve) m <<- solve
     getmatrix <- function() m
     list(set = set, get = get,
          setmatrix = setmatrix,
          getmatrix = getmatrix)
}


## Write a short comment describing this function
# The function is modified from the example function provided.
# It solves the inverse of a matrix given in the variable
# and caches it. If the inverse has already been calculated
# the function returns the cached copy.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     
     m <- x$getmatrix()
     #if the matrix value is not null, then get the cached copy
     if(!is.null(m)) {
          message("getting cached inverse matrix")
          return(m)
     }
     matrix <- x$get()
     m <- solve(matrix, ...)
     x$setmatrix(m)
     m
}