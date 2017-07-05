(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3531100938859641491518459588405676186084747314453125p-33 {+ 1590266487245589 -33 (1.57523e-010)}
; Y = -zero {- 0 -1023 (-0)}
; 1.3531100938859641491518459588405676186084747314453125p-33 > -zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011110 #b0101101001100101011011000101000100100000101100010101)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
