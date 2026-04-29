(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4238315237203644780805689151748083531856536865234375 385 {- 1908767492294903 385 (-1.12204e+116)}
; -1.4238315237203644780805689151748083531856536865234375 385 I == -1.4238315237203644780805689151748083531856536865234375 385
; [HW: -1.4238315237203644780805689151748083531856536865234375 385] 

; mpf : - 1908767492294903 385
; mpfd: - 1908767492294903 385 (-1.12204e+116) class: Neg. norm. non-zero
; hwf : - 1908767492294903 385 (-1.12204e+116) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110000000 #b0110110010000000001110010000010101100100100011110111)))
(assert (= r (fp #b1 #b10110000000 #b0110110010000000001110010000010101100100100011110111)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
