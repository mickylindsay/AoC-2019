# Notes 179 bytes
# Same deal except the regex has been replace with
# this monstrosity `4.times.map{|i| x.scan(/(.)\1{#{i+1}}/).size}`
# it generates an array with the number of pairs, triplets, quads, and quints
#
# And this `a[3]<1&&((a[0]==2&&a[1]<2&&a[2]<1)|(a[0]%2>0&&a[1]<a[0]))`
# is the boolean logic reduction for finding string with solo pair
# false if has quint
# true if 2 pairs and less than 2 triplets
# true if # of pairs is odd and there are fewer triplets than pairs
# false otherwise
# ...both myself and my scrap paper hated that

x,y=*$*[0].split('-');p x.upto(y).count{|x|a=4.times.map{|i| x.scan(/(.)\1{#{i+1}}/).size}
a[3]<1&&((a[0]==2&&a[1]<2&&a[2]<1)|(a[0]%2>0&&a[1]<a[0]))&5.times.all?{|z|x[z]<=x[z+1]}}
