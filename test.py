# 
# Montgomery reduction algorithm (Python)
# 
# Copyright (c) 2018 Project Nayuki
# All rights reserved. Contact Nayuki for licensing.
# https://www.nayuki.io/page/montgomery-reduction-algorithm
# 

import random,sys
import math


class MontgomeryReducer(object):
	
	def __init__(self, mod):
		# Modulus
		if mod < 3 or mod % 2 == 0:
			raise ValueError("Modulus must be an odd number at least 3")
		self.modulus = mod
		
		# Reducer
		self.reducerbits = (mod.bit_length() // 8 + 1) * 8  # This is a multiple of 8 numero de bits do modulo sempre 8
		self.reducer = 1 << self.reducerbits  # This is a power of 256
		self.mask = self.reducer - 1
		assert self.reducer > mod and math.gcd(self.reducer, mod) == 1
		
		# Other computed numbers
		self.reciprocal = MontgomeryReducer.reciprocal_mod(self.reducer % mod, mod)
		self.factor = (self.reducer * self.reciprocal - 1) // mod
		self.convertedone = self.reducer % mod
	
	
	# The range of x is unlimited
	def convert_in(self, x):
		return (x << self.reducerbits) % self.modulus
	
	
	# The range of x is unlimited
	def convert_out(self, x):
		return (x * self.reciprocal) % self.modulus
	
	
	# Inputs and output are in Montgomery form and in the range [0, modulus)
	def multiply(self, x, y):
		mod = self.modulus
		assert 0 <= x < mod and 0 <= y < mod
		product = x * y
		temp = ((product & self.mask) * self.factor) & self.mask
		reduced = (product + temp * mod) >> self.reducerbits
		result = reduced if (reduced < mod) else (reduced - mod)
		assert 0 <= result < mod
		return result
	
	
	# Input x (base) and output (power) are in Montgomery form and in the range [0, modulus); input y (exponent) is in standard form
	def pow(self, x, y):
		assert 0 <= x < self.modulus
		if y < 0:
			raise ValueError("Negative exponent")
		z = self.convertedone
		while y != 0:
			if y & 1 != 0:
				z = self.multiply(z, x)
			x = self.multiply(x, x)
			y >>= 1
		return z
	
	
	@staticmethod
	def reciprocal_mod(x, mod):
		# Based on a simplification of the extended Euclidean algorithm
		assert mod > 0 and 0 <= x < mod
		y = x
		x = mod
		a = 0
		b = 1
		while y != 0:
			a, b = b, a - x // y * b
			x, y = y, x % y
		if x == 1:
			return a % mod
		else:
			raise ValueError("Reciprocal does not exist")

bitlen=20
x=100
y=50

if (len(sys.argv)>1):
	x=int(sys.argv[1])

if (len(sys.argv)>2):
	y=int(sys.argv[2])

if (len(sys.argv)>3):
	bitlen=int(sys.argv[3])

#bitlen = random.randint(2, 100)

mod = random.randrange(1 << bitlen, 2 << bitlen) | 1  # Force it to be odd

mr = MontgomeryReducer( 57896044618658097711785492504343953926634992332820282019728792003956564819949 )

# print( mr.reducer % mr.modulus, mr.modulus )

			
#x = random.randrange(0, mod)
#y = random.randrange(0, mod)



u = mr.convert_in(x)
v = mr.convert_in(y)
w = mr.multiply(u, v)

print( "===================================\n")

x_ = mr.convert_out(u)
y_ = mr.convert_out(v)

print("x=\t",x)
print("y=\t",y)
print( u, v )
print( x_, y_ )
print( mr.factor )
# print("Bits in modulus=\t",bitlen)
# print("N=\t",mod)

print("\nx*y (mod N)")
print("\nResult (Montgomery)=\t",mr.convert_out(w))
print("Result (x*y % mod)=\t",x*y % mod)

# #x = random.randrange(0, mod)
# #y = random.randrange(0, mod)
# u = mr.convert_in(x)
# v = mr.pow(u, y)

# print("\nx^y (mod N)")


# print("Result (Montgomery)=\t",mr.convert_out(v))
# print("Result (x^y % mod)=\t",x**y % mod)