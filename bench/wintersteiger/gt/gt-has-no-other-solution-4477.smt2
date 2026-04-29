(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9807193165505261323033892040257342159748077392578125p334 {+ 4416767148571997 334 (6.93173e+100)}
; Y = -1.419931083685254780135664987028576433658599853515625p845 {- 1891201472006202 845 (-3.3313e+254)}
; 1.9807193165505261323033892040257342159748077392578125p334 > -1.419931083685254780135664987028576433658599853515625p845 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101001101 #b1111101100010000011010111100111100100011110101011101)))
(assert (= y (fp #b1 #b11101001100 #b0110101110000000100110100111111100000000100000111010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
