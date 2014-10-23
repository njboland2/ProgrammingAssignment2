makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}
cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)  
  x$setmean(m)
  m
}
x<-matrix(c(1,2,3,4),nrow=2,ncol=2)
x

vec<-makeVector(x)
vec$get()
vec$getmean()
cachemean(vec)
vec$getmean()
vec<-makeVector(c(1,2,3))
