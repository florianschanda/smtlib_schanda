(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2717728091021431868767876949277706444263458251953125p-949 {- 1223955921801845 -949 (-2.67266e-286)}
; Y = -1.3804474302619116343748828512616455554962158203125p721 {- 1713382905161608 721 (-1.52281e+217)}
; -1.2717728091021431868767876949277706444263458251953125p-949 = -1.3804474302619116343748828512616455554962158203125p721 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001001010 #b0100010110010010111001110001111100001001001001110101)))
(assert (= y (fp #b1 #b11011010000 #b0110000101100101000000001011011011010010011110001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
