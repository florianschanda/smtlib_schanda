(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.790829987086917984839828932308591902256011962890625p479 {- 3561581635158058 479 (-2.79526e+144)}
; Y = 1.1239914615135788711342001988668926060199737548828125p717 {+ 558407899869677 717 (7.74943e+215)}
; -1.790829987086917984839828932308591902256011962890625p479 < 1.1239914615135788711342001988668926060199737548828125p717 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011110 #b1100101001110011110101011000001100111100000000101010)))
(assert (= y (fp #b0 #b11011001100 #b0001111110111101111001111000100000101111000111101101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
