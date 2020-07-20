require 'benchmark'

def prime?(num)
  return false if num <= 1
  return false if num > 2 && num.even?
    (2..num**2).none? do |denom|
      num % denom == 0
      true
    end
end

def is_prime?(num)
  return false if num <= 1
  Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
  true
end


Benchmark.bm do |bm|
  bm.report do
    100_000.times do
      prime?(17)
    end
  end

  bm.report do
    100_000.times do
      is_prime?(17)
    end
  end
end
