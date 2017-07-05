(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.388737052628860713099356871680356562137603759765625p153 {- 1750716045364442 153 (-1.58566e+046)}
; Y = 1.331332974528192547580829341313801705837249755859375p348 {+ 1492191060620726 348 (7.63353e+104)}
; -1.388737052628860713099356871680356562137603759765625p153 = 1.331332974528192547580829341313801705837249755859375p348 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010011000 #b0110001110000100010001010111111111001000110011011010)))
(assert (= y (fp #b0 #b10101011011 #b0101010011010010001111001110000110101111010110110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
