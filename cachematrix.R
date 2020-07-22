## My function would be able to create a special kind of matrix object. In which, 
## it can cache its inverse. Then, it will be able to compute the inverse of my first function. ##Put comments here that give an overall description of what your

## This would create a special kind of matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv  <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
  }
  
    get <- function() {x}
    setInverse <- function(inverse) (inv <<- inverse)
    getInverse <- function() {inv}
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
 
}

## This function would calculate the inverse of makeCacheMatrix

cacheSolve <- function(x, ...) {
    
    inv <- x$getInverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    
    data <- x$get()
    inv <- solve(data, ...)
    x$setInverse(inv)
    inv
}
