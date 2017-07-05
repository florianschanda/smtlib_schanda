(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4785076086644710624540266508120112121105194091796875p678 {- 2155006688075259 678 (-1.85422e+204)}
; Y = -1.5477296507479263443229910990339703857898712158203125p3 {- 2466755051008133 3 (-12.3818)}
; -1.4785076086644710624540266508120112121105194091796875p678 = -1.5477296507479263443229910990339703857898712158203125p3 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010100101 #b0111101001111111011110011000001000011001110111111011)))
(assert (= y (fp #b1 #b10000000010 #b1000110000111000000000101010100100000011000010000101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
