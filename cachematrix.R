makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}

get <- function() x
set_inverse <- function(inv_input) inv <<- inv_input
get_inverse <- function() inv
list(set = set, get = get,set_inverse = set_inverse,get_inverse = get_inverse)
}

cacheSolve <- function(x, ...) {
inv <- x$get_inverse()
if(!is.null(inv)) {
message("chache inverse")
return(inv)
}
data <- x$get()
