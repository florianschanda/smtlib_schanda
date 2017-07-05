(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0599089853009020512075721853761933743953704833984375p640 {- 269806083877287 640 (-4.83577e+192)}
; Y = 1.534772708540927954601329474826343357563018798828125p-29 {+ 2408402170912834 -29 (2.85874e-009)}
; -1.0599089853009020512075721853761933743953704833984375p640 / 1.534772708540927954601329474826343357563018798828125p-29 == -1.381193422846999308006843421026133000850677490234375p668
; [HW: -1.381193422846999308006843421026133000850677490234375p668] 

; mpf : - 1716742557089830 668
; mpfd: - 1716742557089830 668 (-1.69158e+201) class: Neg. norm. non-zero
; hwf : - 1716742557089830 668 (-1.69158e+201) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001111111 #b0000111101010110001100011111110010011010100110100111)))
(assert (= y (fp #b0 #b01111100010 #b1000100011100110110111010011110111111010000001000010)))
(assert (= r (fp #b1 #b11010011011 #b0110000110010101111001000110010010010100000000100110)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
