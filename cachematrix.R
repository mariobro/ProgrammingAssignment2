##cool so basically it starts with making an empty matrix
## in it we have to have a setter and getter for the matrix
## and a setter and getter for the inverse woo

## we don't actually implement the inverse function until cacheSolve tho

## we can pretty much make something analogous to 
## the vector version

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv ##DO I NEED THE SETINV EVEN? 
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached matrix inverse")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)##WoO U DIDIT DO U NEED THE ...??
  x$setinv(m)
  m
  
}
