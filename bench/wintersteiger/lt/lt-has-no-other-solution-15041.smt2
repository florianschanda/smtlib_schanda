(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3435884869058407620201478493981994688510894775390625p-446 {- 1547384981597937 -446 (-7.39415e-135)}
; Y = -1.1835868353343954595402465201914310455322265625p-18 {- 826801603202112 -18 (-4.51503e-006)}
; -1.3435884869058407620201478493981994688510894775390625p-446 < -1.1835868353343954595402465201914310455322265625p-18 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001000001 #b0101011111110101011010100100001010001010111011110001)))
(assert (= y (fp #b1 #b01111101101 #b0010111011111111100010111111110110111100110001000000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
