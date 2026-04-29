(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7469862614406361789320953903370536863803863525390625p-674 {- 3364127048674929 -674 (-2.22881e-203)}
; Y = -1.0051177152209598286702885161503218114376068115234375p16 {- 23048140362103 16 (-65871.4)}
; -1.7469862614406361789320953903370536863803863525390625p-674 > -1.0051177152209598286702885161503218114376068115234375p16 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101011101 #b1011111100111010011111011101101101110010111001110001)))
(assert (= y (fp #b1 #b10000001111 #b0000000101001111011001010000001110000001000101110111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
