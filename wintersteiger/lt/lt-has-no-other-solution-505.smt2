(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.17793759247157847624976056977175176143646240234375p67 {+ 801359675150204 67 (1.73833e+020)}
; Y = 1.3598949317150321736136220351909287273883819580078125p443 {+ 1620822680364349 443 (3.08883e+133)}
; 1.17793759247157847624976056977175176143646240234375p67 < 1.3598949317150321736136220351909287273883819580078125p443 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001000010 #b0010110110001101010100010110110001100100111101111100)))
(assert (= y (fp #b0 #b10110111010 #b0101110000100010000100110000000110110110010100111101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
