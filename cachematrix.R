## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# The function creats a matrix that can cache the inverse
makeCacheMatrix <- function(x = matrix()) { 
  inverse <- NULL
  set <- function(x) {
    x <<- y;
    inverse <<- NULL;
  }
  get <- function() x;
  setinv <- function(inv) inverse <<- inv;
  getinv <- function() inverse;
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  
}


## Write a short comment describing this function

##This function get the inverse of the matrix returned by `makeCacheMatrix` 
#above. If the inverse has already been calculated, then `cacheSolve` should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinv()
  if(!is.null(inverse)) {
    message("Getting cached data")
    return(inverse)
  }
  data <- x$get()
  invserse <- solve(data, ...)
  x$setinv(inverse)
  inverse
}
