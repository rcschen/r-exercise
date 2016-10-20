resp=read.csv('D1_resp.csv')
key=c(1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1) #answer
library('psych')
#estimate multichose score and show the average score in detail (short=FALSE)
math_score = score.multiple.choice(key,resp, short=FALSE) 
math_score
math_score$item.stats
ability=math_score$scores #get students' ability
str(ability)
de_ability=describe(ability)

#standaize the scores z_score
my_z_ability=(ability-de_ability$mean)/de_ability$sd
z_ability=scale(ability)
z_ability_info=describe(z_ability)
#t_score translate
t_ability = 10*z_ability+60
t_de_ability=describe(t_ability)

