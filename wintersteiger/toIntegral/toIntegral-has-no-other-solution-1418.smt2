(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9263393204304815053973243266227655112743377685546875 208 {- 4171861418309355 208 (-7.9245e+062)}
; -1.9263393204304815053973243266227655112743377685546875 208 I == -1.9263393204304815053973243266227655112743377685546875 208
; [HW: -1.9263393204304815053973243266227655112743377685546875 208] 

; mpf : - 4171861418309355 208
; mpfd: - 4171861418309355 208 (-7.9245e+062) class: Neg. norm. non-zero
; hwf : - 4171861418309355 208 (-7.9245e+062) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011001111 #b1110110100100100100100101101111000111111011011101011)))
(assert (= r (fp #b1 #b10011001111 #b1110110100100100100100101101111000111111011011101011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
