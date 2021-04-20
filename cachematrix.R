## Is a function to create special Matrix object
## This task is a cache that can inverse a matrix
## cache is inverse
## the matrix should be named makeCacheMatrix
## make a file for the matrix
## this special "matrix" object can cache its inverse

makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- fuction() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## the function is cacheSolve
## the inverse special "matrix" is compute by the function
## the matrix is not change
## if the inverse is already calculated
## to identify if the matrix is changed
## then, the cacheSolve is retrieved the cache
## the inverse special "matrix" is done by solving function in R


cacheSolve <- function(x, ...){
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
