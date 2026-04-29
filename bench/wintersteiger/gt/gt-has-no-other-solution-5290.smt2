(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.415920604894553402886003823368810117244720458984375p-84 {+ 1873139881218822 -84 (7.32014e-026)}
; Y = -1.3079709126951943876093764629331417381763458251953125p604 {- 1386977687655029 604 (-8.68391e+181)}
; 1.415920604894553402886003823368810117244720458984375p-84 > -1.3079709126951943876093764629331417381763458251953125p604 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101011 #b0110101001111001110001011101001111000001001100000110)))
(assert (= y (fp #b1 #b11001011011 #b0100111011010111001011101000011000100101001001110101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
