## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  ##set the value of the matrix
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  ##get the value of the matrix
  get<-function() x
  ##set the value of inverse
  setmatrix<-function(solve) inv<<- solve
  ##get the value of the inverse
  getmatrix<-function() inv
  
  
  list(set=set, get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ##get the inverse matrix
  inv<-x$getmatrix()
  ## Return a matrix that is the inverse of 'x'
  if(!is.null(inv)){
    message("returning cached data")
    return(inv)
  }
  matrix<-x$get()
  inv<-solve(matrix)
  x$setmatrix(inv)
  inv
}
