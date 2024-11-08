a <- array(data = 1:6)
s= 0
for(elem in a)
{
  s = s + elem
}
print(s)

#min and max 
maximum = -1
minimum = 1000

for(elem in a)
{
  if(elem > maximum){
    maximum = elem}
  if(elem < minimum) {
      minimum = elem}
}
      
print(maximum)
print(minimum)
print(paste0(minimum,' ' , maximum))
summ = 0
#mean of a
for(elem in a)
{ summ = s + elem}
meann = summ/length(a)
varr = 0
for(elem in a)
{
  varr =(sum(meann- elem))**2
}

varr = varr/length(a)
print(varr)
B <- sort(a)
C <-sort(a, decreasing =  TRUE)

CW = cbind(a, B, C)
RW = rbind(a, B, C)

  