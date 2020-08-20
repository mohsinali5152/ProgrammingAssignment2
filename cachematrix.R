## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {       ## parent function
          in_verse<-NULL
  set<-function(y){
    x<<-y
    in_verse<<-NULL
get <- function(){x}
  setInverse<-function(inverse){in_verse<<-inverse}
  getInverse <- function() {in_verse}
  list(set = set, get = get, setInverse=setInverse,getInverse=getInverse)

}


## Write a short comment describing this function
##this fucntion solve inverse calcuation
cacheSolve <- function(x, ...) {
        in_verse <- x$getInverse()
  if(!is.null(in_verse))
  {
    message("getting cached data")
    return(in_verse)
  }
    mat_r<-x$get()
  in_verse<-solve(mat_r, ...)
  x$setInverse(in_verse)
  in_verse  ## Return a matrix that is the inverse of 'x'
}
