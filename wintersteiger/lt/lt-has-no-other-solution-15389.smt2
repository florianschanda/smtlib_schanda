(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6146546162957411407745667020208202302455902099609375p-716 {- 2768158300911055 -716 (-4.68385e-216)}
; Y = 1.5603106464981959522475563062471337616443634033203125p527 {+ 2523414818780997 527 (6.85518e+158)}
; -1.6146546162957411407745667020208202302455902099609375p-716 < 1.5603106464981959522475563062471337616443634033203125p527 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100110011 #b1001110101011010000000010100001101010011010111001111)))
(assert (= y (fp #b0 #b11000001110 #b1000111101110000100001001011111001001111011101000101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
