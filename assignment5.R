df = data.frame(PatientId = c(1,2,3,4), AdmDate = c('10/15/2009', '11/01/2009', '10/21/2009', '10/28/2009'), Age = c(25, 34, 28, 52), Diabetes = c('Type1', 'Type2', 'Type1', 'Type1'), Status = c('Poor', 'Improved', 'Excellent', 'Poor'), stringsAsFactors = FALSE)
#a
subset1 = df[,c('PatientId', 'Age')] 
subset1 = subset(df, select = c("PatientId", "Age"))

#b
ans = df[df$Diabetes == 'Type1',]
ans = subset(df, Diabetes == "Type1",)

#c
ans_c = nrow(subset(df, df$Status == 'Poor'))

#d
ans_d = summary(df)

#e
ans_e = mean(subset(df, Status != "Excellent")$Age)

#f
#new_df = rbind(df, c(5, '10/12/2012', 25, 'Type2', 'Excellent'))
p_id = as.numeric(readline(prompt = 'Enter Patient ID: '))
adm_date = as.data.frame.Date(readline(prompt = "Enter Admission Date: "))
age = as.numeric(readline(prompt="Enter Age: "))
d_type = as.character(readline(prompt = "Enter Diabetes Type: "))
stat = as.character(readline(prompt = "Enter Status: "))
new_df2 = rbind(df, c(p_id, adm_date, age, d_type, stat))