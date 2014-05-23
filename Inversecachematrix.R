## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special matrix object that can cache it's inverse.
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
	set <- function(y){
	x <<- y
	m <<- NULL
	}
	get <- function() x
	setmatrix <- function(solve) m <<- solve
	getmatrix <- function() m
	list (set = set, get=get,
		setmatrix = setmatrix,
		getmatrix = getmatrix)
}


## Write a short comment describing this function
## This function computes the inverse of a special maatrix retuned by "makeCacheMatrix"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
	if(!is.null(m)) {
		message ("getting cached data")
		return (m)
	}
	data <<- x$get()
	m <<- solve (matrix, ...)
}


