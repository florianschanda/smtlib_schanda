(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.0181975344815590300839858173276297748088836669921875p-539 {- 81954409510211 -539 (-5.65802e-163)}
; -oo * -1.0181975344815590300839858173276297748088836669921875p-539 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b00111100100 #b0000010010101000100101111111011101110111010101000011)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
