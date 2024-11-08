
#Q1
set.seed(0)

MARKS <- matrix(sample(0:100, 60, replace = TRUE), nrow = 20, ncol = 3)
colnames(MARKS) <- c("SUB1", "SUB2", "SUB3")

print(MARKS)

#PART A Q1
apply(MARKS, 1, sum)

#PART B Q1
MARKS_ALL = cbind(MARKS, TOTAL = apply(MARKS, 1, sum))

#PART C Q1
st.err = function(x){
  sd(x)/ sqrt(length(x))
}
apply(MARKS,2, st.err)

#PART D Q1
MARKS_2 = apply(MARKS, 1:2, function(x) x + 0.25)
print(MARKS_2)

#Q2
V1 = MARKS[,1]
V2 = MARKS[,2]
V3 = MARKS[,3]

lapply(list(V1,V2,V3), sum)

#Q3
TOTAL_SUM = sapply(lapply(list(V1,V2,V3), sum), function(x)x)

#Q4 
V1_sqr = sapply(V1, function(x) x*x)
V2_sqr = sapply(V2, function(x) x*x)
V3_sqr = sapply(V3, function(x) x*x)

#Q5
I =  c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4)
MARKS_I = cbind(I, MARKS)

#for SUB1
sub1 = MARKS[1,]

tapply(MARKS_I[,2], MARKS_I[,1], mean)
tapply(MARKS_I[,2], MARKS_I[,1], sd)

#Q6
f = function(x, y){
  x/y
}

mapply(function(x,y) x/y, V1, V2)

#Q7
