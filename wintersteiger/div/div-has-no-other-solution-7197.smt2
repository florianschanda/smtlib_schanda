(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.185359982295719927236632429412566125392913818359375p-937 {- 834787147196406 -937 (-1.02034e-282)}
; Y = -zero {- 0 -1023 (-0)}
; -1.185359982295719927236632429412566125392913818359375p-937 / -zero == +oo
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
(assert (= x (fp #b1 #b00001010110 #b0010111101110011110000000111010111110010011111110110)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
