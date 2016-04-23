## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This takes 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    y <<- x
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inv) m <<- inv
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function gets the inverse of the matrix x.
## If there is a cached inverse, return it
## otherwise, get the matrix, calculate the inverse, cache it and return it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}
