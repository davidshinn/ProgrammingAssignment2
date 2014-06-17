## The following functions provides
## persistence storage of the calculated inverse
## of a matrix, so that if the inverse is called more than once,
## it will return the stored value rather
## than solve the inverse

## This function returns a list of functions
## that provide retrieving and setting the value
## of an anonymous matrix and retrieving and calculating the inverse
## of the anonymous matrix

makeCacheMatrix <- function(x = matrix()) {

}


## This function returns the inverse of the matrix
## accessible through a matrix created by makeCacheMatrix.
## This optimizes the time retrieval of the inverse
## by calculating the inverse and storing the value
## the first time, and retrieving the stored value on
## any subsequent call

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
