 ##These functions calcute and  cach the inverse of a matrix
## makechMatrixa caches tae inversef a matrix x 
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  set <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
     
        
        
cacheSolve <- function(x=matrix, ...) {
# m <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
        ## Return a matrix that is the inverse of 'x'

## a<-matrix(1:4,nrow=2)
## 
## b$get()
## acheSolve(a)
