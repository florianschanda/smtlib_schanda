(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.520978228226080641860562536749057471752166748046875p-336 {- 2346277354507118 -336 (-1.08654e-101)}
; Y = -zero {- 0 -1023 (-0)}
; -1.520978228226080641860562536749057471752166748046875p-336 > -zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010101111 #b1000010101011110110101000100010000101000101101101110)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
