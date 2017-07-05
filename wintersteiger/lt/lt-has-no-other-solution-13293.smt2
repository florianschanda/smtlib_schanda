(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.51249672764372267153021311969496309757232666015625p-712 {- 2308080071644868 -712 (-7.02001e-215)}
; Y = 1.6750618427854977454671825398690998554229736328125p317 {+ 3040208263620808 317 (4.47239e+095)}
; -1.51249672764372267153021311969496309757232666015625p-712 < 1.6750618427854977454671825398690998554229736328125p317 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100110111 #b1000001100110010111111000100110010001001011011000100)))
(assert (= y (fp #b0 #b10100111100 #b1010110011010000110110100101100110001010100011001000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
