# Assignment 1 
#如何将3.141592657 转换成 character
as.character(3.141592657)
is.character(as.character(3.141592657))

#如何将3.141592657 转换成 logical
as.logical(3.141592657)
is.logical(as.logical(3.141592657))

#如何判断"hello world"是否是一个character
is.character("hello world")

#如何判断一个NA是否是缺失值
is.na(NA)

v1 <- c(1,2,3,4)
v2 <- c(2,3,4,5)
#取出v1的第2和第3个元素
v2[c(F,T,T,F)] #取v2第二三个元素

#取出v1的最后一个元素
v1[which.max(order(v1))] 

#取出v1的倒数第二个元素
v1[which.max(order(v1))-1] 

#取出v1中整除3的元素
v1[v1 %% 3 ==0] #%%取余数，%/%整除

#v1[-1]会返回什么结果,有何启示?
v1[-1]#负一代表去掉第一个元素
v2[-2]#负二代表去掉第二个
v2[-2 -3 -4]#多个负数会返回原向量

#v1[5]会返回什么结果,有何启示?
v1[5]#没有的数字会返回NA

#v1[] <- 99 与 v1 <- 99 有何不同?
v1[]<- 99
v1 #有方括号时，v1会保持原来的向量结构，即4个向量，每个位置都为99
v1 <- 99
v1 #没有方括号时，会将v1定义为数字99
