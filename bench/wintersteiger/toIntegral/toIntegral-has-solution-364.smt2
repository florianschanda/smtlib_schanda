(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0969713552342057472088754366268403828144073486328125 301 {- 436720159298381 301 (-4.46914e+090)}
; -1.0969713552342057472088754366268403828144073486328125 301 I == -1.0969713552342057472088754366268403828144073486328125 301
; [HW: -1.0969713552342057472088754366268403828144073486328125 301] 

; mpf : - 436720159298381 301
; mpfd: - 436720159298381 301 (-4.46914e+090) class: Neg. norm. non-zero
; hwf : - 436720159298381 301 (-4.46914e+090) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100101100 #b0001100011010011000111010101111101100001001101001101)))
(assert (= r (fp #b1 #b10100101100 #b0001100011010011000111010101111101100001001101001101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
