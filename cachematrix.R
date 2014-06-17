## The following functions provides
## persistence storage of the calculated inverse
## of a matrix, so that if the inverse is called more than once,
## it will return the stored value rather
## than solve the inverse

## This function returns a list of functions
## that provide retrieving and setting the value
## of an anonymous matrix and retrieving and calculating the inverse
## of the anonymous matrix

makeCacheMatrix <- function(this_matrix=matrix()) {
    inverse_matrix <- NULL
    set <- function(x) {
        this_matrix <<- x
        inverse_matrix <<- NULL # Remove cache when matrix is set
    }
    get <- function() this_matrix
    set_inverse <- function(y) inverse_matrix <<- y
    get_inverse <- function() inverse_matrix
    list(set=set,
         get=get,
         set_inverse=set_inverse,
         get_inverse=get_inverse)
}


## This function returns the inverse of the matrix
## accessible through a matrix created by makeCacheMatrix.
## This optimizes the time retrieval of the inverse
## by calculating the inverse and storing the value
## the first time, and retrieving the stored value on
## any subsequent call

cacheSolve <- function(cache_matrix, ...) {
    inverse <- cache_matrix$get_inverse()
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    data <- cache_matrix$get()
    inverse <- solve(data, ...)
    cache_matrix$set_inverse(inverse)
    inverse
}
