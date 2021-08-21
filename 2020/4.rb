# Notes: 118 bytes
#  split on double new line to get each new record
#  scan gives the array of "keys" on the record
#  find all gives the array that match the expected keys
#  if all 7 ar found, the problem assumes a valid record 

p STDIN.read.split("\n\n").count{|x|x.scan(/(.{3}):/).flatten.find_all{|a|/byr|iyr|eyr|hgt|hcl|ecl|pid/=~a}.size==7}
