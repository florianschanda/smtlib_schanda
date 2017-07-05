(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.889448735057811301629726585815660655498504638671875p-1015 {- 4005720991771518 -1015 (-5.38133e-306)}
; Y = -zero {- 0 -1023 (-0)}
; -1.889448735057811301629726585815660655498504638671875p-1015 / -zero == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000001000 #b1110001110110010111010011000110010001010101101111110)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
