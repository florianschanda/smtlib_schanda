(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.26742613655355196300433817668817937374114990234375p733 {+ 1204380248931708 733 (5.72677e+220)}
; Y = -1.6683467081880241078550852762418799102306365966796875p960 {- 3009965985949883 960 (-1.62586e+289)}
; 1.26742613655355196300433817668817937374114990234375p733 > -1.6683467081880241078550852762418799102306365966796875p960 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011011100 #b0100010001110110000010100000111010010111110101111100)))
(assert (= y (fp #b1 #b11110111111 #b1010101100011000110001010001011000001110100010111011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
