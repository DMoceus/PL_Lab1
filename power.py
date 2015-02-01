def power(pow,base):
	acc = 1
	for p in range(0,pow):
		acc = acc * base
	return acc

def main():
	print "2 to 5 is %d" % (power(5,2))
	print "3 to 4 is %d" % (power(4,3))

main()
