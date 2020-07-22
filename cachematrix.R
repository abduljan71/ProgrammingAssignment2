## My function would be able to create a special kind of matrix object. In which, 
## it can cache its inverse. Then, it will be able to compute the inverse of my first function. ##Put comments here that give an overall description of what your

## This would create a special kind of matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  solve(x)

}


## This function would calculate the inverse of makeCacheMatrix

cacheSolve <- function(x, ...) {
  x <- solve(x)
  answer <- x
  want <- solve(answer)
 
  return(want)
  
        ## Return a matrix that is the inverse of 'x'
}
