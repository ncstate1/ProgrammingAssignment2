makematrix<-functin(x=matrix){
  xinv=NULL
  set<-function(y){
    x<<-y
    xinv= NULL
  }
  get<-function()x
  setinv<-function(inv) xinv= inv
  getinv<- function()xinv
  
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}
cachematrix<-function(x,...){}
m<-x$getinv()
if(!is.null(m)
{return(m)}
else{inverse<-x$get()
     m<- solve(inverse)
     x$setinv(m)
     m
}
