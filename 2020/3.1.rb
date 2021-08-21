# Notes: 145 bytes
#  pretty long but i like this one
#  0.upto(4) plus the 1+y/4 and 1+2*(y%4) calculates the right and down step size for each path
#    Right 1, down 1.
#    Right 3, down 1. (This is the slope from 3.rb)
#    Right 5, down 1.
#    Right 7, down 1.
#    Right 1, down 2.
#  uses the first attempt from 3.rb as well b/c of the additonal loop used here

j=0;n=STDIN.read.split.map(&:chars);p 0.upto(4).map{|y|j=0;0.step(n.size-1,1+y/4).count{|x|a=n[x][j%n[0].size]=='#';j+=1+2*(y%4);a}}.reduce(:*)
