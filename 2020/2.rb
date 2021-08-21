# Notes: 100 bytes
#  all the $k variables after the regex are the capture groups

p STDIN.read.split("\n").count{|x|/(.+)-(.+) (.): (.+)/=~x;$4.count($3).between?($1.to_i,$2.to_i)}
