#require 'benchmark'

def prime?(num)
  return false if num.even? && num != 2
  return false if num <= 1
  return true if num == 2
  (2..num-1).none? {|denom| return false if num % denom == 0}
  true
end

#def is_prime?(num)
  #return false if num <= 1
# Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
#true
#end


#Benchmark.bm do |bm|
  #bm.report do
    #100_000.times do
    #  prime?(-1)
    #end
  #end

  #bm.report do
  #  100_000.times do
    #  is_prime?(-1)
  #  end
  #end
#end
