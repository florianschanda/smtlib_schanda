(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3161533457778544775607088013202883303165435791015625p-127 {+ 1423828090237081 -127 (7.73565e-039)}
; Y = -1.754650805610377783949616059544496238231658935546875p392 {- 3398645086941742 392 (-1.7699e+118)}
; 1.3161533457778544775607088013202883303165435791015625p-127 < -1.754650805610377783949616059544496238231658935546875p392 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110000000 #b0101000011101111011011001111100010100011000010011001)))
(assert (= y (fp #b1 #b10110000111 #b1100000100110000110010111001000111111111001000101110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
