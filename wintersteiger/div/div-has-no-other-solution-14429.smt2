(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6036089916828826229533433433971367776393890380859375p875 {+ 2718413230020511 875 (4.03966e+263)}
; Y = -1.1908720666529095666419379995204508304595947265625p406 {- 859611368253480 406 (-1.96808e+122)}
; 1.6036089916828826229533433433971367776393890380859375p875 / -1.1908720666529095666419379995204508304595947265625p406 == -1.3465837654501549014440797691349871456623077392578125p469
; [HW: -1.3465837654501549014440797691349871456623077392578125p469] 

; mpf : - 1560874516933981 469
; mpfd: - 1560874516933981 469 (-2.05259e+141) class: Neg. norm. non-zero
; hwf : - 1560874516933981 469 (-2.05259e+141) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101010 #b1001101010000110000111100110111011011001011110011111)))
(assert (= y (fp #b1 #b10110010101 #b0011000011011100111111011110001111111110100000101000)))
(assert (= r (fp #b1 #b10111010100 #b0101100010111001101101101011000111101110110101011101)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
