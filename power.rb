#!/usr/bin/ruby

def power(base,pow)
	acc = 1
	i = 0
	while i < pow
		acc = acc * base
		i = i+1
	end
	return acc
end

def powerR(base,pow)
	if pow == 0
		return 1
	else
		return powerR(base,pow-1)*base
	end
end

print "2 to 5 is "
puts power(2,5)
print "3 to 4 is "
puts power(3,4)

print "2 to 5 is "
puts powerR(2,5)
print "3 to 4 is "
puts powerR(3,4)
