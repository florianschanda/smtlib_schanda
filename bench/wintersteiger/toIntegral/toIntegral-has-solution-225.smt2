(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7656597994453289146576935308985412120819091796875 153 {- 3448225187474552 153 (-2.01603e+046)}
; -1.7656597994453289146576935308985412120819091796875 153 I == -1.7656597994453289146576935308985412120819091796875 153
; [HW: -1.7656597994453289146576935308985412120819091796875 153] 

; mpf : - 3448225187474552 153
; mpfd: - 3448225187474552 153 (-2.01603e+046) class: Neg. norm. non-zero
; hwf : - 3448225187474552 153 (-2.01603e+046) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010011000 #b1100010000000010010001111101011001111010110001111000)))
(assert (= r (fp #b1 #b10010011000 #b1100010000000010010001111101011001111010110001111000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
