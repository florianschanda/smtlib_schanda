from mpf.floats import *

# Double rounding explains the wrong result
x = MPF(11, 53, 0x3ff0000000000000)
y = MPF(11, 53, 0x5fefffffffffffff)
r = fp_div(RM_RNE, x, y)
print("expected       = %016x" % r.bv)
print("actual (in 80) = 1ff0000000000000")

# extended precision is (15, 64) and this is what happens in -mpc80
x2 = fp_from_float(15, 64, RM_RNE, x)
y2 = fp_from_float(15, 64, RM_RNE, y)
r2 = fp_div(RM_RNE, x2, y2)
r2_rounded = fp_from_float(11, 53, RM_RTZ, r2)
print("double rounded = %016x" % r2_rounded.bv)

# Second test vector gets the right result in 80 bit, but wrong in 53
x = MPF(11, 53, 0x000fffffffffffff)
y = MPF(11, 53, 0x3ff8c0493f45169b)
r = fp_div(RM_RNE, x, y)
print("expected       = %016x" % r.bv)
print("actual (in 64) = 000a57ccb40cb71c")

# What the dogshit unit does in -mpc64 is this:
x2 = fp_from_float(15, 53, RM_RNE, x)
y2 = fp_from_float(15, 53, RM_RNE, y)
r2 = fp_div(RM_RNE, x2, y2)
r2_rounded = fp_from_float(11, 53, RM_RNE, r2)
print("double rounded = %016x" % r2_rounded.bv)
