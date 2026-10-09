#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

#To read some pieces of code that other people have already written, we can borrow those codebooks from the R library. 

#Here, we borrow some instructions for making plots, which also includes the sample dataset called 'diamonds', by calling up the code using the 'library' function:  
library(ggplot2)

#This is like checking out a codebook from the library - you get to keep it at hand as long as you're working in this space.

#The 'head' command in bash has the same name in R, but it is a function too: 
head(diamonds)

#To change the number of rows displayed, it looks like this: 
head(diamonds, n=10)

#We also talked about how the function nrow() works just like the bash command (word count) that tells us how many lines are in a file: wc -l
nrow(diamonds)
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

#This is an example of some student code where they were looking for all the "Good" diamonds: pretty close! 
diamonds[grep("Good",diamonds)]

#Putting results in a variable is good practice if we want to us them later. 

# Use the '<-' combined symbol to "stuff" your code result from the right side into the variable on the left side. You can name the variable whatever you want! We named it 'stud' here: 
stud <- diamonds[grep("Good",diamonds)]

#Let us make a few modifications. 
#First, let's specify that we are looking in rows with a comma after the grep command
#Then let's grep for the pattern in the "cut" column only. 

#To use column information inside the function, we can use SYNTAX like this:
#diamonds$cut. That calls the column "by its name". 

stud2 <- diamonds[grep("Good",diamonds$cut),]
stud2

#Here is a student example of "subsetting" a dataset. 
#This can be a good idea to figure out how the commands work by using smaller datasets.
diamonds[1:10, c("cut","price")] -> dia
dia

#The student code works, but the more typical way to write this is in R is to put the variable name first and the instructions second: 

dia2 <- diamonds[1:10, c("cut", "price")]
dia2


#Much like the 'MATCH' function in excel, the grep function in R returns the index of the matches. 
#Consider this grep function, which searches for the word 'Premium' in the dataframe 'dia2'. Where does it say the matches are? 
matches <- grep("Premium", dia2$cut)
matches

#You should see all of the row numbers returned. So how do we get the information in the rows returned, instead of just which rows have a match? 

#We might try to just use the returned indexes to grab rows: 
dia2[matches,]

#That works! 

#You could also try using the combine function we saw earlier, because we got more than one row number back: 
dia2[c(matches),]

#That works too!

#Finally, let's see if we can stuff the function inside the dataframe to select the right rows, alll in one line of code: 
dia2[grep("Premium", dia2$cut), ]

#I hope you can see that there are LOTS of ways to do things 'right', not just LOTS of ways to get it a little wrong. 

#Another version of grep that students have tried is 'grepl', which returns something called a boolean. 

#Booleans are either 'TRUE' or 'FALSE' for each of the data items surveyed. 

#This could be useful, let's save that list of values in a variable and try some of the same steps as above. 

stud3 <- grepl("Premium", dia2$cut)
stud3
dia2[stud3,]

#Ah! Both booleans from grepl and indexes from grep work!

#Now, I told you the fun part was plotting. How do we? Try this code: 

ggplot(data = dia, aes(x = cut, y = price, color = cut)) +
  geom_point(alpha = 0.8, size =4)

#You'll notice we need to call out plotting function ggplot(). 

#The function needs a dataset (dia), and the variables to use get packaged into the 'aes()' function (aes = aesthetics; how modern!).

#The handy part of ggplot is that we can add-on instructions with extra functions using the '+' sign - kinda like buying upgrades, but free! 

#Here, we add-on upgrades to our datapoints using the function 'geom_point()' and give it a new color opacity using 'alpha' and a new point size using 'size'. Try to change some values and see what happens!  

#For the TASKS, I've created a subset of diamonds called diatask with this command: 

diatask <- diamonds[80:100, c(2,7)]
#print(diatask, n = 20) 

#
#
#
#
#
#
#
#
head(diatask)
#key variables are cut and price which are the headers of the columns. The choices underneath cut describe the cut are very good, good,fair, premium, and ideal. Underneath the price is a numerical value indicating the price. 
#
#
#
#
#
 head(diatask, n = nrow(diatask))
#
#
#
#
#
#
diatask[diatask$price < 750, ]
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#sparkles should have 10 rows in it because after you use the code below you count the rows that have either ideal or premium diamonds.
head(diatask, n = nrow(diatask))
sparkles <- rbind(diatask[grep("Premium", diatask$cut), ], diatask[grep("Ideal", diatask$cut), ])
rownames(sparkles) <- NULL
sparkles
nrow(sparkles)
#I got the same number of rows that I expected from part A. 
#
#
#
#
#
#
#
#
ggplot(data = diatask, aes(x = cut, y = price, color = cut)) +
  geom_point(alpha = 0.8, size = 4)
#
#
#
#
#
#
#
ggplot(data = diatask, aes(x = cut, y = price, color = cut)) +
  geom_point(alpha = 0.8, size = 4) +
  theme(panel.grid = element_blank())
#
#
#
#
#
#
diasize <- diamonds[80:100, c(1, 2, 7)]
head(diasize)
#
#
#
#
#
#
#
ggplot(data = diasize, aes(x = carat, y = price)) +
  geom_point(alpha = 0.8, size = 4) +
  theme(panel.grid = element_blank())
#
#
#
#
#
## We are not using the entire dataset including all the cut and price data or all the carat and price data. 
#
#
#
#
#
#
#
#
#
diasize_with all data <- diamonds[, c("carat", "price")]
ggplot(data = diasize_all, aes(x = carat, y = price)) + geom_point(alpha = 0.15, size = 1) + theme(panel.grid = element_blank())
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
