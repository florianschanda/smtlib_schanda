(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.39882948307076038219065594603307545185089111328125p-15 {- 1796168311341844 -15 (-4.26889e-005)}
; Y = 1.36882670116978832908216645591892302036285400390625p199 {+ 1661047793952548 199 (1.09981e+060)}
; -1.39882948307076038219065594603307545185089111328125p-15 m 1.36882670116978832908216645591892302036285400390625p199 == -1.39882948307076038219065594603307545185089111328125p-15
; [HW: -1.39882948307076038219065594603307545185089111328125p-15] 

; mpf : - 1796168311341844 -15
; mpfd: - 1796168311341844 -15 (-4.26889e-005) class: Neg. norm. non-zero
; hwf : - 1796168311341844 -15 (-4.26889e-005) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111110000 #b0110011000011001101100000110001001111000001100010100)))
(assert (= y (fp #b0 #b10011000110 #b0101111001101011011011010011101101101010011100100100)))
(assert (= r (fp #b1 #b01111110000 #b0110011000011001101100000110001001111000001100010100)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
