## The functions below are used to cache the inverse of a matrix.
## 
## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(mymat = matrix()) {

  inv <- NULL
  set <- function (matrix) {
    mymat <- matrix
    inv <- NULL
  }
    
  get <- function() {
    mymat
  }
  setInverse <- function (inverse) {
    inv <- inverse
  }
  getInverse <- function() {
    inv
  }
  list (set=set, get = get, setInerse = setInverse, getInvrse = getInverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve retrieves the inverse from the cache.

cacheSolve <- function(a, ...) {
        ## Return a matrix that is the inverse of 'x'
}
