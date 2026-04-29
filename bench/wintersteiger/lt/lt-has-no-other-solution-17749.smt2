(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0701392694650986303628314999514259397983551025390625p653 {+ 315879187827057 653 (3.9997e+196)}
; Y = 1.132001744489524952541614766232669353485107421875p-854 {+ 594483007295280 -854 (9.4239e-258)}
; 1.0701392694650986303628314999514259397983551025390625p653 < 1.132001744489524952541614766232669353485107421875p-854 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010001100 #b0001000111110100101001011010110010000100100101110001)))
(assert (= y (fp #b0 #b00010101001 #b0010000111001010110111011100011110011000111100110000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
