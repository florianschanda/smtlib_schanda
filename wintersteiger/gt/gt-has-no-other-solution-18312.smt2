(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.440264550148998790035648198681883513927459716796875p-839 {- 1982775263995470 -839 (-3.92894e-253)}
; Y = -1.71716723035924889728676134836860001087188720703125p-777 {- 3229834071408244 -777 (-2.16026e-234)}
; -1.440264550148998790035648198681883513927459716796875p-839 > -1.71716723035924889728676134836860001087188720703125p-777 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010111000 #b0111000010110101001011010111010001111010011001001110)))
(assert (= y (fp #b1 #b00011110110 #b1011011110011000010001011000100000100111111001110100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
