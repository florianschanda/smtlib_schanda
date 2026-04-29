(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.84874678703256467571236498770304024219512939453125p-474 {+ 3822415713811764 -474 (3.79018e-143)}
; Y = -1.8787094600998239801725731012993492186069488525390625p-881 {- 3957355597072497 -881 (-1.16529e-265)}
; 1.84874678703256467571236498770304024219512939453125p-474 < -1.8787094600998239801725731012993492186069488525390625p-881 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000100101 #b1101100101000111011110000010110011100011110100110100)))
(assert (= y (fp #b1 #b00010001110 #b1110000011110011000110100110100111010000100001110001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
