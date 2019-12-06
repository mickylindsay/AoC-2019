# Notes: 252 bytes
# Nothing really... just changes values of the
# hash to also count of steps from the origin

m=Hash.new [0,0];n=0;STDIN.each_line{|v|n+=1;->{p=0,0
k=0;v.split(',').map{|x|c='LRDU'=~/#{x[0]}/;d=0,0
d[c/2]=c%2*2-1;x[1..].to_i.times{p[0]+=d[1];p[1]+=d[0]
z=p.dup;q=[n,m[z][1]+(k+=1)];m[z][0]>n-2&&m[z]=q}}}[]}
p m.map{|_,v|v[0]>1?v[1]:9**9}.min
