(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.531532147180726166624253892223350703716278076171875p-20 {+ 2393807979978558 -20 (1.46058e-006)}
; Y = 1.6707589389925552314508649942581541836261749267578125p929 {+ 3020829707702301 929 (7.58193e+279)}
; Z = 1.6667962177315589489268177203484810888767242431640625p694 {+ 3002983197707905 694 (1.36993e+209)}
; 1.531532147180726166624253892223350703716278076171875p-20 x 1.6707589389925552314508649942581541836261749267578125p929 1.6667962177315589489268177203484810888767242431640625p694 == 1.279410512628329943396465750993229448795318603515625p910
; [HW: 1.279410512628329943396465750993229448795318603515625p910] 

; mpf : + 1258353080556346 910
; mpfd: + 1258353080556346 910 (1.1074e+274) class: Pos. norm. non-zero
; hwf : + 1258353080556346 910 (1.1074e+274) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111101011 #b1000100000010010011111011010010011101001111100111110)))
(assert (= y (fp #b0 #b11110100000 #b1010101110110110110110111001101001111001000000011101)))
(assert (= z (fp #b0 #b11010110101 #b1010101010110011001010000010110001000000111010000001)))
(assert (= r (fp #b0 #b11110001101 #b0100011110000111011100101000010111100101101100111010)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
