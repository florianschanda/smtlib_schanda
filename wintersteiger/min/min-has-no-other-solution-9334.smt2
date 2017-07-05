(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.54692006012991445373927490436471998691558837890625p-612 {- 2463108979002532 -612 (-9.10145e-185)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.54692006012991445373927490436471998691558837890625p-612 m +oo == -1.54692006012991445373927490436471998691558837890625p-612
; [HW: -1.54692006012991445373927490436471998691558837890625p-612] 

; mpf : - 2463108979002532 -612
; mpfd: - 2463108979002532 -612 (-9.10145e-185) class: Neg. norm. non-zero
; hwf : - 2463108979002532 -612 (-9.10145e-185) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110011011 #b1000110000000010111100111111101111001000110010100100)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b00110011011 #b1000110000000010111100111111101111001000110010100100)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
