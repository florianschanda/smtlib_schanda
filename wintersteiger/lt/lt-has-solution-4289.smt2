(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.577603647077510995444526997744105756282806396484375p-187 {- 2601295569746118 -187 (-8.04246e-057)}
; Y = -zero {- 0 -1023 (-0)}
; -1.577603647077510995444526997744105756282806396484375p-187 < -zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101000100 #b1001001111011101110101010010011000111111100011000110)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
