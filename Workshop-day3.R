library(devtools)

#Make a new function file
use_r("testFun")#INITIALIZE  FUNCTIONS
# LIKE BUILDING, INSTALLING AND ATTACHING YOUR PACKAGE
load_all()

#Now we have access to our developing functions
testFun(6)

#check our package
check()

#Setup Metadata Description file
# FIll in form by creating license
use_mit_license ("Gregor Theilmeier")

#Setup documentation entries
# open the function and go to "Code... insert roxygen skeleton" in the menu.
# 2. insert minimum values
# 3. Make documentation
document()
?testFun

# check again
check()

#test install:
install()

# initialize

library(reviewRgregor)
