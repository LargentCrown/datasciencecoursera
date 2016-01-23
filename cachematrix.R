## makeCacheMatrix creates and returns a list of functions
## used by cacheSolve to get or st the inverted matrix in cache

## Write a short comment describing this function
   
makeCacheMatrix <- function(x = matrix()) {

}
     # stores the cached value
     #initialize to  Null
     inv <- NULL
     
   # creates the matrix in it's working environment
      set <- function(y){
      x <<- y
      inv <<- NULL
}

   # get the solution of the matrix
      get <- function()x
  
   # invert the matrix and store in cache
      setmatrix <- function(inverse)inv <<- inverse

   # get the inversed matrix 
      getinverse <- function()inv

   # return the created functions to it's working environment
      list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)
}



## Write a short comment describing this function

## cacheSolve calculates the inverse of the matrix created in 
makeCacheMatrix
## If the inverted matrix does not exisst  in cache -
## it's created in the working environment and it's inverted value
## is stored in cache



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

     # find the current state of the inverse and find if its been
     # calculated
     inv <- x$getinverse()

     # If so
     if(!is.null(inv)){
          message("getting cached data")
          return(inv)
}

     # If not pull the pull the matrix
      data <- x$get()
      
     # Solve for inverse
      inv <- solve(data, ...)
      
     # Cache in the object
      x$setinverse(inv)

     # Return 
      inv
}