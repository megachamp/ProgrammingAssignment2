## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


## Function to create a matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## To compute the inverse of a matrix created using the function makeCacheMatrix created above.
##Inverse should have been calculated and the matrix should remain unchanged to retreive this inverse 

cacheSolve <- function(x, ...) {
        ## The below will give the value of a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
              return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
