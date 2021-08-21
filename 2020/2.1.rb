# Notes: 101 bytes
#  ^ operation is bitwise xor
#  just needs to check the char at both $1 and $2 indexes

p STDIN.read.split("\n").count{|x|/(.+)-(.+) (.): (.+)/=~x;($4[$1.to_i-1]==$3)^($4[$2.to_i-1]==$3)}
