## Programming Assignment 2 - create a function to return the inverse of a matrix
## https://github.com/ckmitchell/ProgrammingAssignment2/cachematrix.R
##
## 
## The first function, makeCacheMatrix, creates a special matrix, which is a list containing a function that:
## sets the value of the matrix
## gets the value of the matrix
## sets the value of the inverse matrix
## gets the value of the inverse matrix


makeCacheMatrix <- function(x = matrix()) {
        a <- NULL
        set <- function(y) {
                x <<- y
                a <<- NULL
        }
        get <- funtion(x)
        setinverse <- function(inverse) a <<- inverse
        getinverse <- function() a
        list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        
}

## The second function, cacheSolve, calculates the inverse of the special matrix created with the function, makeCacheMatrix
## Before calculating, cacheSolve checks to make sure the inverse isn't already stored in the memory
## If so, then the function retruns the inverse from the cache and doesn't continue the computation
## Otherwise, the inverse is caluclated and set

cacheSolve <- function(x, ...) {
        a <- x$getinverse()
        if (!is.null(a)) {
                message("getting cached data")
                return(a)
        }
        data <- x$get()
        a <- solve(data, ...)
        x$setinverse(a)
        a
}
