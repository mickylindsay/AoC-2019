# Notes: 64 bytes
#  STDIN is enumarable so can be mapped
#  combination gives all possible pairs of inputs
#  sum and reduce(:*) on array will add and multiple all indexes respecively

p STDIN.map(&:to_i).combination(2).find{|x|x.sum==2020}.reduce:*
