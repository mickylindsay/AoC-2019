# Notes: .product of ranges doesn't exist?

b=STDIN.read.split',';(c=(0..99).to_a).product(c).each{|x,y|i=0;a=b.map &:to_i;a[1,2]=x,y;until a[i]==99
a[a[i+3]]=a[a[i+1]].send a[i]>1?:*: :+,a[a[i+2]];i+=4;end;p 100*a[1]+a[2]if a[0]==19690720}
