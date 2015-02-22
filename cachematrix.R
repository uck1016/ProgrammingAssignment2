## Defining two functions which will calculate and store the inverse of a 
## invertible matrix
 


## the below function will store the result of the inverse of a matrix in memory

makeCacheMatrix <- function(x = matrix()) {
  inverse<-NULL;
  set<-function(y){
    x<<-y;
    inverse<<-NULL;
  }
  get<-function() x;
  setInverse<-function(inverseMatrix) inverse<<-inverseMatrix;
  getInverse<-function() inverse;
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse);

}


## the below function will return the inverse of a matrix,it first checks if the result
## is already stored in memory (utilizing the the result of the above function) and in
## the result of the above function is passed as the argument.

cacheMatrix <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  result<-x$getInverse()
  if(!is.null(result)){
    message("Data already in cache");
    return(result);
  }
  data<-x$get();
  result<-solve(data,...)
  x$setInverse(result);
  result;
}
