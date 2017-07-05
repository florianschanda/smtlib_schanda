(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.505979192367041807898431216017343103885650634765625p-926 {+ 2278727702201434 -926 (2.65487e-279)}
; Y = 1.2052752811590761172766406161827035248279571533203125p-973 {+ 924477679736389 -973 (1.50973e-293)}
; 1.505979192367041807898431216017343103885650634765625p-926 = 1.2052752811590761172766406161827035248279571533203125p-973 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001100001 #b1000000110000111110110100011001110101100010001011010)))
(assert (= y (fp #b0 #b00000110010 #b0011010010001100111010111011101101000001011001000101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
