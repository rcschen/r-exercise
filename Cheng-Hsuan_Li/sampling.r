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
