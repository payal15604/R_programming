A = c(23, 34, 56, 3, 0, 0)
B = c("c", "b", "a")
x = seq(1,10)
y = seq(5,10)
z = seq(1,10,0.6)
d = seq(1,50,10)

for(i in 1:5){
  print("3, 4, 5")
}


for(i in 1:8){
  h = runif(1,1,100)
  print(h)
}

C = c(2,3,4,5,6,7)
#SQUARE ROOT OF A NUMBER 
input = 35
fac = 1
last = 0
l = ceiling(input/2)
for(i in 2:input){
  if(input%%i==0)
    {
    fac = fac+1
    last = i
    if(fac ==2){
      print(last)
      fac = 0
    }
  }
}

if(fac ==2){
  print(last)
}



