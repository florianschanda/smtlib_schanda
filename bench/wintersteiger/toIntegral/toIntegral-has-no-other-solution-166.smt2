(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.43026840295881907394459631177596747875213623046875 928 {- 1937756619234636 928 (-3.24529e+279)}
; -1.43026840295881907394459631177596747875213623046875 928 I == -1.43026840295881907394459631177596747875213623046875 928
; [HW: -1.43026840295881907394459631177596747875213623046875 928] 

; mpf : - 1937756619234636 928
; mpfd: - 1937756619234636 928 (-3.24529e+279) class: Neg. norm. non-zero
; hwf : - 1937756619234636 928 (-3.24529e+279) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110011111 #b0110111000100110000100011110111100110101110101001100)))
(assert (= r (fp #b1 #b11110011111 #b0110111000100110000100011110111100110101110101001100)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
