#!/usr/bin/ruby

def ack(m,n)
	if m==0
		return 2*n
	elsif n==0 && m>0
		return 0
	elsif n==1 && m>0
		return 2
	else
		return ack(m-1,ack(m,n-1))
	end
end

print "ack(1,0): "
puts ack(1,0)
print "ack(0,3): "
puts ack(0,3)
print "ack(5,1): "
puts ack(5,1)
print "ack(2,3): "
puts ack(2,3)
