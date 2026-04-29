(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4654145894630676849601513822562992572784423828125p449 {+ 2096040971678664 449 (2.13024e+135)}
; Y = 1.4173936863050806689301452934159897267818450927734375p213 {+ 1879774050110359 213 (1.86586e+064)}
; 1.4654145894630676849601513822562992572784423828125p449 > 1.4173936863050806689301452934159897267818450927734375p213 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111000000 #b0111011100100101011010010001100011010011001111001000)))
(assert (= y (fp #b0 #b10011010100 #b0110101011011010010100000000100000111100101110010111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
