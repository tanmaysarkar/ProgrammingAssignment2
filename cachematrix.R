## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix(),...) {
        inver <- NULL
        set <- function(y) {
                x <<- y
                inver <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) inver <<- solve
        getinverse <- function() inver
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cachesolve <- function(x=matrix(), ...) {
        inver <- x$getinverse()
        if(!is.null(inver)) {
                message("getting cached data")
                return(inver)
        }
     	  matrix<-x$get()
        inver <- solve(matrix, ...)
	  x$setinverse(inver)
        inver
}