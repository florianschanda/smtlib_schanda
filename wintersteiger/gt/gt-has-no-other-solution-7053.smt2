(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8099034417416943743006640943349339067935943603515625p757 {+ 3647480838433977 757 (1.37203e+228)}
; Y = 1.955242278240053810378640264389105141162872314453125p-855 {+ 4302028768330450 -855 (8.13869e-258)}
; 1.8099034417416943743006640943349339067935943603515625p757 > 1.955242278240053810378640264389105141162872314453125p-855 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011110100 #b1100111101010101110101001111101100110010110010111001)))
(assert (= y (fp #b0 #b00010101000 #b1111010010001010110000100000100011001100001011010010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
