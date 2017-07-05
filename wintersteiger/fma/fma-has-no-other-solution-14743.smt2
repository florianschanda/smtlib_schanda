(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8544089188167374171456458498141728341579437255859375p-62 {- 3847915688405087 -62 (-4.02111e-019)}
; Y = +oo {+ 0 1024 (1.#INF)}
; Z = 1.6607051780183768041609937426983378827571868896484375p-691 {+ 2975551593525319 -691 (1.61646e-208)}
; -1.8544089188167374171456458498141728341579437255859375p-62 x +oo 1.6607051780183768041609937426983378827571868896484375p-691 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111000001 #b1101101010111010100010101111101110111010100001011111)))
(assert (= y (_ +oo 11 53)))
(assert (= z (fp #b0 #b00101001100 #b1010100100100011111110010111101111100011000001000111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
