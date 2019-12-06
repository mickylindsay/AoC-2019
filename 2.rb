# Notes: 129 bytes
# array indexed at [x,y] returns that range, which
# can be overwritten with another comma seperated list
#
# Also, I wanted to select between addition and multiplication
# with this `x.send %i[+ *][a[i]-1],y` but `x.send a[i]>1?:*: :+,y`
# is 2 bytes shorter...
#
# Also, also, `%[+][0]` is shorter than `'+''.to_sym`

a=STDIN.read.split(',').map &:to_i;i=0;a[1,2]=12,2;until a[i]==99
a[a[i+3]]=a[a[i+1]].send a[i]>1?:*: :+,a[a[i+2]];i+=4end;p a[0]
