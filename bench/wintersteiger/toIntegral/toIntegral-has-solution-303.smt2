(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.56187031110398510946879468974657356739044189453125 208 {- 2530438923718452 208 (-6.42516e+062)}
; -1.56187031110398510946879468974657356739044189453125 208 I == -1.56187031110398510946879468974657356739044189453125 208
; [HW: -1.56187031110398510946879468974657356739044189453125 208] 

; mpf : - 2530438923718452 208
; mpfd: - 2530438923718452 208 (-6.42516e+062) class: Neg. norm. non-zero
; hwf : - 2530438923718452 208 (-6.42516e+062) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011001111 #b1000111111010110101110111001001011001000111100110100)))
(assert (= r (fp #b1 #b10011001111 #b1000111111010110101110111001001011001000111100110100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
