(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.474427668542376057558840329875238239765167236328125p575 {+ 2136632271261698 575 (1.82335e+173)}
; Y = 1.965377008798836033776069598388858139514923095703125p442 {+ 4347671537098482 442 (2.23205e+133)}
; 1.474427668542376057558840329875238239765167236328125p575 < 1.965377008798836033776069598388858139514923095703125p442 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111110 #b0111100101110100000101110111100010110101000000000010)))
(assert (= y (fp #b0 #b10110111001 #b1111011100100010111100101001100100011001111011110010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
