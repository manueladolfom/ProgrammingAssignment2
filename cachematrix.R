## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    matinv <- NULL  #initializes the inverse of matrix to NULL
    #function to set the matrix
    set <- function(y){
        x<<-y
        matinv <<-NULL
    }
    get <- function() x
    setmatinv <- function(inv) matinv <<- inv
    getmatinv <- function() matinv
    list(set=set, get=get, setmatinv=setmatinv, getmatinv=getmatinv)
}


## Write a short comment describing this function

cacheSolve <- function(z=matrix(), ...) {
    #Trying to get the inverse for my function
    funinv <- z$getmatinv()
    #Validating if it is null or not
    if(!is.null(funinv)){
        message("Getting chached data")
        return(funinv)
    }
    data<-z$get()
    #Solving if not existent
    funinv <-solve(data,...)
    z$setmatinv(funinv)
    funinv
}
