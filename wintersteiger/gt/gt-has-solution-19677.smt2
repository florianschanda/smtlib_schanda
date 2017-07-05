(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3854822648368589899092739869956858456134796142578125p352 {+ 1736057784277213 352 (1.27104e+106)}
; Y = 1.942084432266856452997672022320330142974853515625p-411 {+ 4242771098108560 -411 (3.67231e-124)}
; 1.3854822648368589899092739869956858456134796142578125p352 > 1.942084432266856452997672022320330142974853515625p-411 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101011111 #b0110001010101110111101110011100010101001100011011101)))
(assert (= y (fp #b0 #b01001100100 #b1111000100101100011100100000001010101000001010010000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
