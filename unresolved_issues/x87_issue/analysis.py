from mpf.floats import *

# Double rounding explains the wrong result
x = MPF(11, 53, 0x3ff0000000000000)
y = MPF(11, 53, 0x5fefffffffffffff)
r = fp_div(RM_RNE, x, y)
print("%016x" % r.bv)

x2 = fp_from_float(15, 79, RM_RNE, x)
y2 = fp_from_float(15, 79, RM_RNE, y)
r2 = fp_div(RM_RNE, x2, y2)
r2_rounded = fp_from_float(11, 53, RM_RNE, r2)
print("%016x" % r2_rounded.bv)

# Double rounding does not explain the second wrong result
x = MPF(11, 53, 0x000fffffffffffff)
y = MPF(11, 53, 0x3ff8c0493f45169b)
r = fp_div(RM_RNE, x, y)
print("%016x" % r.bv)

x2 = fp_from_float(15, 79, RM_RNE, x)
y2 = fp_from_float(15, 79, RM_RNE, y)
r2 = fp_div(RM_RNE, x2, y2)
r2_rounded = fp_from_float(11, 53, RM_RNE, r2)
print("%016x" % r2_rounded.bv)
