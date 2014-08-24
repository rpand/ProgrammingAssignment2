## The functions below are used to cache the inverse of a matrix.
## 
## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(mymat = matrix()) {
    #Initialize variables
    inv <- NULL
    set <- function (matrix) {
        mymat <<- matrix
        inv <<- NULL
    }
    get <- function() {
        mymat
    }
    #Set inverse
    setInverse <- function (inverse) {
        inv <<- inverse
    }
    #Get Inverse
    getInverse <- function() {
        inv
    }
    #List of the methods
    list (set=set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve retrieves the inverse from the cache.

cacheSolve <- function(a, ...) {
    ## Return a matrix that is the inverse of 'a'
    mymat <- a$getInverse()
    # Check if inverse is already set
    if(!is.null(mymat)) {
        message ("Getting cached data")
    }
    #Get the matrix 
    obj <- a$get()
    #Calculate the inverse
    mymat <- solve (obj)
    #Set the Inverse to the object
    a$setInverse(mymat)
    #Return
    mymat
}
