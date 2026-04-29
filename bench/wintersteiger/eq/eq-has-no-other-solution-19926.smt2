(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6875610986223030796082866800134070217609405517578125p699 {- 3096499907549853 699 (-4.4384e+210)}
; Y = 1.5873012721470398656009592741611413657665252685546875p-521 {+ 2644969790395627 -521 (2.31223e-157)}
; -1.6875610986223030796082866800134070217609405517578125p699 = 1.5873012721470398656009592741611413657665252685546875p-521 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010111010 #b1011000000000100000000010001000010010101101010011101)))
(assert (= y (fp #b0 #b00111110110 #b1001011001011001011000000100110011000101010011101011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
