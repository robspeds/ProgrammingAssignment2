## Caching the inverse of a matrix may reduce computing time
## the following function will be used to cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        inv<- NULL
        set<-function(y) {
                x<<-y
                inv<<- NULL
        }
        get<-function() x
        setinverse<-function(inverse) inv<<-inverse
                getinverse<- function() inv
                list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## This function computes the inverse of the matrix created using the "makeCacheMatrix" 


cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
        
}
