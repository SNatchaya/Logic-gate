AND = c(0,0,0,1) #output
truthTable = expand.grid(c(0,1),c(0,1))
AND.data = data.frame(truthTable,AND)
print(AND.data)

#########################################
OR = c(0,1,1,1)  #output
truthTable = expand.grid(c(0,1),c(0,1))
OR.data = data.frame(truthTable,OR)
print(OR.data)
net = neuralnet(OR~Var1+Var2,OR.data,hidden=2,rep=5)
print(net)
plot(net)