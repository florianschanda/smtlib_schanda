(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.86295572065042502885034991777502000331878662109375 -184 {- 3886407061958492 -184 (-7.59772e-056)}
; -1.86295572065042502885034991777502000331878662109375 -184 I == -1.0 0
; [HW: -1.0 0] 

; mpf : - 0 0
; mpfd: - 0 0 (-1) class: Neg. norm. non-zero
; hwf : - 0 0 (-1) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101000111 #b1101110011101010101010101000011000010110111101011100)))
(assert (= r (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
