# Notes: 26 bytes
#  STDIN.respond_to?(:each)
#    > true
# Which means its Enumberable
# Which means you can .sum it XD

p STDIN.sum{|x|x.to_i/3-2}
