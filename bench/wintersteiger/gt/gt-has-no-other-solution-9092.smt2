(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.988027315418495977183965806034393608570098876953125p792 {+ 4449679449550610 792 (5.1782e+238)}
; Y = 1.600234113994661644397865529754199087619781494140625p83 {+ 2703214132121418 83 (1.54765e+025)}
; 1.988027315418495977183965806034393608570098876953125p792 > 1.600234113994661644397865529754199087619781494140625p83 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100010111 #b1111110011101111010110111010111101000110111100010010)))
(assert (= y (fp #b0 #b10001010010 #b1001100110101000111100010110000110001100111101001010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
