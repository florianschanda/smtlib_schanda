(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.936097760797376832186955653014592826366424560546875 539 {- 4215809526709422 539 (-3.48413e+162)}
; -1.936097760797376832186955653014592826366424560546875 539 I == -1.936097760797376832186955653014592826366424560546875 539
; [HW: -1.936097760797376832186955653014592826366424560546875 539] 

; mpf : - 4215809526709422 539
; mpfd: - 4215809526709422 539 (-3.48413e+162) class: Neg. norm. non-zero
; hwf : - 4215809526709422 539 (-3.48413e+162) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000011010 #b1110111110100100000110100101010001111011110010101110)))
(assert (= r (fp #b1 #b11000011010 #b1110111110100100000110100101010001111011110010101110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
