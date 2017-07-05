(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.676543474967924662877294395002536475658416748046875p246 {+ 3046880941765486 246 (1.89581e+074)}
; Y = 1.8541112876738452541758306324481964111328125p-61 {+ 3846575276900864 -61 (8.04093e-019)}
; 1.676543474967924662877294395002536475658416748046875p246 = 1.8541112876738452541758306324481964111328125p-61 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011110101 #b1010110100110001111101000000001101001111001101101110)))
(assert (= y (fp #b0 #b01111000010 #b1101101010100111000010011000111110110100001000000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
