# Notes: 64 bytes
#  Bump the combination to 3 to get all possible trio's

p STDIN.map(&:to_i).combination(3).find{|x|x.sum==2020}.reduce:*
