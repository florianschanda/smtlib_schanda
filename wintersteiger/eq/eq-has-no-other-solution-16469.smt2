(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3064701560447884443050270419917069375514984130859375p510 {- 1380218880563487 510 (-4.37923e+153)}
; Y = -1.007699621609290385748636253993026912212371826171875p360 {- 34676013010494 360 (-2.36663e+108)}
; -1.3064701560447884443050270419917069375514984130859375p510 = -1.007699621609290385748636253993026912212371826171875p360 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111101 #b0100111001110100110101000000000101101001100100011111)))
(assert (= y (fp #b1 #b10101100111 #b0000000111111000100110100011011100000000111000111110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
