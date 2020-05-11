## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## x stores the matrix, m stores the inverse, if set is called, cache is clear because data has been changed.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set  <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function

## cacheSolve checks it there is inverse in cache, if there is, just return cache, else, solve for inverse.

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
        ## Return a matrix that is the inverse of 'x'
}
