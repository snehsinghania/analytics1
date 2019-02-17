#graphs
mtcars
names(mtcars)
table(mtcars$cyl)
table(mtcars$cyl,mtcars$am)
mtcars$mpg
#continuous data=histogram,boxplot
hist(mtcars$mpg)
boxplot(mtcars$mpg, horizontal = T)
boxplot(mpg~
t1=table(mtcars$gear)        
t1
barplot(t1,col=1:3)
t2=table(students$college)
barplot(t2)
t3=table(students$gender)
barplot(t3)
pie(t3)
title('this is bar plot', sub='subtitle')
