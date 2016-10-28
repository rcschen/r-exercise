install.packages('XLConnect') #install library of reading excel file

library('XLConnect')
TB = readWorksheetFromFile('grade.xlsx', sheet=1)

all_average_wisdom=mean(TB$wisdom)  #Mean
all_sd_wisdom=sd(TB$wisdom) #SD

all_average_physical=mean(TB$physical)
all_sd_physical=sd(TB$physical)
hist(TB$wisdom)
hist(TB$wisdom, xlim=c(70,100))
s_wisdom=sample(TB$wisdom, 10) #sampling 10 data from TB$wisdom
s_10_average_wisdom = mean(s_wisdom)
s_10_sd_wisdom = sd(s_wisdom)

wis_matrix= matrix(0, 100, 2)

for (i in 1:100){
  wis_sample_10 = sample(TB$wisdom, 10)
  wis_sample_10
  wis_matrix[i,1] = mean(wis_sample_10)
  wis_matrix[i,2] = sd(wis_sample_10)
  
}
windows()
hist(wis_matrix[,1], xlim=c(40,100))
hist(wis_matrix[,2], xlim=c(0,30))
mean(wis_matrix[,1])
sd(wis_matrix[,1]) #Standard Error