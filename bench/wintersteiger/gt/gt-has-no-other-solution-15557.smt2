(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3563046725871072961666641276679001748561859130859375p-752 {- 1604653590693663 -752 (-5.72533e-227)}
; Y = -1.942742786400968757476448445231653749942779541015625p225 {- 4245736061541626 225 (-1.04752e+068)}
; -1.3563046725871072961666641276679001748561859130859375p-752 > -1.942742786400968757476448445231653749942779541015625p225 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100001111 #b0101101100110110110010000111010000101100011100011111)))
(assert (= y (fp #b1 #b10011100000 #b1111000101010111100101110101110000100001110011111010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
