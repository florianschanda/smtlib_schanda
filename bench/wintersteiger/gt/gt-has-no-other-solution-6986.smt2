(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5367362417915568784110291744582355022430419921875p257 {+ 2417245138528696 257 (3.55884e+077)}
; Y = 1.7430537022711740657854306846274994313716888427734375p734 {+ 3346416376664727 734 (1.57517e+221)}
; 1.5367362417915568784110291744582355022430419921875p257 > 1.7430537022711740657854306846274994313716888427734375p734 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100000000 #b1000100101100111100010111101110100010010100110111000)))
(assert (= y (fp #b0 #b11011011101 #b1011111000111000110001000111011001101101001010010111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
