(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.8600226573948377417622168650268577039241790771484375p312 {+ 3873197719373575 312 (1.55195e+094)}
; -zero - 1.8600226573948377417622168650268577039241790771484375p312 == -1.8600226573948377417622168650268577039241790771484375p312
; [HW: -1.8600226573948377417622168650268577039241790771484375p312] 

; mpf : - 3873197719373575 312
; mpfd: - 3873197719373575 312 (-1.55195e+094) class: Neg. norm. non-zero
; hwf : - 3873197719373575 312 (-1.55195e+094) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10100110111 #b1101110000101010011100011110001101010100011100000111)))
(assert (= r (fp #b1 #b10100110111 #b1101110000101010011100011110001101010100011100000111)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
