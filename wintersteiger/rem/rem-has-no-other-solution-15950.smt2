(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6336886749314889488715607512858696281909942626953125p1 {- 2853880080290357 1 (-3.26738)}
; Y = -1.7417888772868705959950830219895578920841217041015625p324 {- 3340720111336729 324 (-5.9527e+097)}
; -1.6336886749314889488715607512858696281909942626953125p1 % -1.7417888772868705959950830219895578920841217041015625p324 == -1.6336886749314889488715607512858696281909942626953125p1
; [HW: -1.6336886749314889488715607512858696281909942626953125p1] 

; mpf : - 2853880080290357 1
; mpfd: - 2853880080290357 1 (-3.26738) class: Neg. norm. non-zero
; hwf : - 2853880080290357 1 (-3.26738) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000000000 #b1010001000111001011010111100011010101101001000110101)))
(assert (= y (fp #b1 #b10101000011 #b1011110111100101111000000011100001111011110100011001)))
(assert (= r (fp #b1 #b10000000000 #xa2396bc6ad235)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
