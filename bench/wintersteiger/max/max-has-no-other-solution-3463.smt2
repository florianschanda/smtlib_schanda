(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4189764732887437670427743796608410775661468505859375p-100 {+ 1886902288980191 -100 (1.11938e-030)}
; Y = -zero {- 0 -1023 (-0)}
; 1.4189764732887437670427743796608410775661468505859375p-100 M -zero == 1.4189764732887437670427743796608410775661468505859375p-100
; [HW: 1.4189764732887437670427743796608410775661468505859375p-100] 

; mpf : + 1886902288980191 -100
; mpfd: + 1886902288980191 -100 (1.11938e-030) class: Pos. norm. non-zero
; hwf : + 1886902288980191 -100 (1.11938e-030) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110011011 #b0110101101000010000010101100101010010001100011011111)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b01110011011 #b0110101101000010000010101100101010010001100011011111)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
