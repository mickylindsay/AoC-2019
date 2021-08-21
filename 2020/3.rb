# Notes: 71 bytes
#  map(&:chars) turnsstring into array of characters
#  count over that is the same as enumerating over each row
#  increment index j and mod to mimic the endlessly repreating forrest

# first pass attempt (96 bytes) to many variables
# j=0;n=STDIN.read.split.map(&:chars);p 0.upto(n.size-1).count{|x|a=n[x][j%n[0].size]=='#';j+=3;a}

j=0;p STDIN.read.split.map(&:chars).count{|x|a=x[j%x.size]=='#';j+=3;a}
