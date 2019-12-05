# Notes: Same deal as 1.rb, but recursive
# anonymous function over each input.

b=->x{(a=x.to_i/3-2)+(a>8?b[a]:0)};p STDIN.sum(&b)
