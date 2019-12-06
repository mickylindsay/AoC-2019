# Notes: 85 bytes A lot in here.
# 1. $*[0] => first command line arg
# 2. upto method uses the successor (.succ) method.
# funny enough succession on strings work
# '123'.succ == '124' and '9'.succ == '10'
# 3. regex /(.)\1/ backmatches the (.) group
# so it returns the index of the first dup character

x,y=*$*[0].split('-')
p x.upto(y).count{|x|x=~/(.)\1/&&5.times.all?{|z|x[z]<=x[z+1]}}
