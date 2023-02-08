## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# ===== Assigment: Caching the Inverse of a Matrix =====
makeCacheMatrix <- function(x = matrix()){
  inverse = NULL
  set <- function(y){
    x <- y
    inverse <- NULL
  }
  # Display the matrix.
  get <- function() x
  # Solve the inverse matrix.
  setInverse <- function(solve) inverse <<- solve
  getInverse <- function() inverse
  # Generate the list.
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


cachesolve <- function(x, ...){
  inverse <- x$getInverse()
  if(!is.null(inverse)){
    message("getting cache data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse
  # Note : $operator is invalid for atomic vectors.
}
