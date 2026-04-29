(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1804037394396835747301111041451804339885711669921875p-557 {- 812466213716803 -557 (-2.50221e-168)}
; Y = -1.801146345853850139206997482688166201114654541015625p529 {- 3608042384656634 529 (-3.16531e+159)}
; -1.1804037394396835747301111041451804339885711669921875p-557 > -1.801146345853850139206997482688166201114654541015625p529 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010010 #b0010111000101110111100001000000011111000001101000011)))
(assert (= y (fp #b1 #b11000010000 #b1100110100010111111011010100101011000000100011111010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
