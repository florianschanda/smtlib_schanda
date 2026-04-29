(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3163396159287807929416658225818537175655364990234375p369 {+ 1424666976419383 369 (1.58284e+111)}
; Y = 1.4432275323034187142212658727657981216907501220703125p261 {+ 1996119349322021 261 (5.34766e+078)}
; 1.3163396159287807929416658225818537175655364990234375p369 > 1.4432275323034187142212658727657981216907501220703125p261 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101110000 #b0101000011111011101000100001000011010111111000110111)))
(assert (= y (fp #b0 #b10100000100 #b0111000101110111010111000000101111101110000100100101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
