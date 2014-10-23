## Fubction will cache a matrix inverse once it is calculated


makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
} 




## Fubction will caluclate  inverse om a matrix
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
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
}
#amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2))
#amatrix$get()
#cacheSolve(amatrix)
