library("GillespieSSA")

## Irreversible isomerization
## Var initial population sizes
parms <- c(c=0.5)
x0 <- c(X=10000)
x0 <- c(X=100)
x0 <- c(X=10)
a <- c("c*X")
nu <- matrix(-1)
out <- ssa(x0,a,nu,parms,tf=10,method=ssa.d(),
           simName="Irreversible isomerization") # Direct method
plot(out$data[,1],out$data[,2]/10000,col="red",cex=0.5,pch=19)


## Logistic growth
parms <- c(b=2, d=1, K=1000)
x0 <- c(N=500)
a <- c("b*N", "(d+(b-d)*N/K)*N")
nu <- matrix(c(+1,-1),ncol=2)
out <- ssa(x0,a,nu,parms,tf=10,method=ssa.d(),maxWallTime=5,simName="Logistic growth")
ssa.plot(out)


## Kermack-McKendrick SIR model
parms <- c(beta=0.001, gamma=0.1)
x0 <- c(S=499,I=1,R=0)
a <- c("beta*S*I","gamma*I")
nu <- matrix(c(-1,0,+1,-1,0,+1),nrow=3,byrow=TRUE)
out <- ssa(x0,a,nu,parms,tf=100,method=ssa.d(),simName="SIR model")
ssa.plot(out)


## Lotka predator-prey model
parms <- c(c1=10, c2=.01, c3=10)
x0 <- c(Y1=1000,Y2=1000)
a <- c("c1*Y1","c2*Y1*Y2","c3*Y2")
nu <- matrix(c(+1,-1,0,0,+1,-1),nrow=2,byrow=TRUE)
out <- ssa(x0,a,nu,parms,tf=100,method=ssa.etl(),
           simName="Lotka predator-prey model")
ssa.plot(out)
