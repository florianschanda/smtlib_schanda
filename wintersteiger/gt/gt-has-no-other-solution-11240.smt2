(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.118031146306594170170001234509982168674468994140625p-875 {- 531565026524490 -875 (-4.43821e-264)}
; Y = 1.205647166760104749272386470693163573741912841796875p269 {+ 926152503590606 269 (1.14364e+081)}
; -1.118031146306594170170001234509982168674468994140625p-875 > 1.205647166760104749272386470693163573741912841796875p269 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010010100 #b0001111000110111010010100000100101001011110101001010)))
(assert (= y (fp #b0 #b10100001100 #b0011010010100101010010101110111110111111111011001110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
