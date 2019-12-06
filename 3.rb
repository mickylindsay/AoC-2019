# Notes: 228 bytes
# regex match against 'LRDU' to calculate direction of next step
# Fails for results greater than 387420489 b/c of min comparison

m=Hash.new 0;n=0;STDIN.each_line{|v|n+=1;->{p=0,0
v.split(',').map{|x|c='LRDU'=~/#{x[0]}/;d=0,0
d[c/2]=c%2*2-1;x[1..].to_i.times{p[0]+=d[1]
p[1]+=d[0];z=p.dup;m[z]>n-2&&m[z]=n}}}[]}
p m.map{|k,v|v>1?k[0].abs+k[1].abs: 9**9}.min
