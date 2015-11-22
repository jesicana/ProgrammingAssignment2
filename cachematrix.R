## the purpose of the function is to cache the inverse of a matrix

## This function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  Inver <- NULL
  set <- function(y) {
    x <<- y
    Inver <<- NULL
  }
  get <- function() x
  setInver <- function(inverse) dInver <<- inverse
  getInver <- function() Inver
  list(set = set, get = get,
       setInver = setInver,
       getInver = getInver)
}



## This function computes the inverse of the special matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
  invFunction <- x$getInverse()
  if(!is.null(invFunction)) {
    message("get cached data")
    return(invFunc)
  }
  data <- x$get()
  invFunction <- solve(data, ...)
  x$setInverse(invFunction)
  invFunction
}
