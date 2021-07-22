# p×q=177773となる素数pとqを求めよ。(p<q)

require 'prime'

p = 0
q = 0
target = 177_773
Math.sqrt(target).to_i.times { |num|
  next unless Prime.prime?(num) && (target % num).zero?

  p = num
  q = target / num
  break if Prime.prime?(p) && Prime.prime?(q)
}
puts "p=#{p}, q=#{q}"
