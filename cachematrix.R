## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {#creamos la matrix
      inv <- NULL#definimso cuando es inversa es NULL
      set <- function(y){#la trabajamso para la funcion definica en y
            x <<- y #la llamamos 
            inv <<- NULL#la trabajamos en la inversa
      }
      get <- function() x
      setInverse <- function(solveMatrix) inv <<- solveMatrix
      getInverse <- function() inv
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {#devolvemos una matriz qeu es al inversa de x
      inv <- x$getInverse()
      if(!is.null(inv)){
            message("getting cached data")
            return(inv)
      }
      data <- x$get()
      inv <- solve(data)
      x$setInverse(inv)
      inv      
}
