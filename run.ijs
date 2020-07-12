require 'debug/dissect'
readfile=: 1!:1
writefile=: 1!:2
pwd=: 1!:43 ''
cwd=: 1!:44 '/Users/michaelrauh/j901-user/projects/'
cut=: < ;. _2
tonums=: ". @: >
tidy=: 3 : 0
y=. y , (LF ~: {: y) # LF
)

cwd

arr=: tonums cut tidy readfile < 'input.txt'
fuel=: -&2 @: <. @: %&3
answerone=: +/ fuel arr

recfuel=: fuel^:(<_)
round=: 0&>.
tail=: }.
recsum=: +/ @: round @: tail @: recfuel

answertwo=: +/ recsum arr

< answerone , answertwo