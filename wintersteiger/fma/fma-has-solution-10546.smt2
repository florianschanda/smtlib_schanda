(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4880181215783514492301264908746816217899322509765625p217 {- 2197838230490313 217 (-3.13413e+065)}
; Y = 1.4380810769207792443324933628900907933712005615234375p-1013 {+ 1972941774778487 -1013 (1.63832e-305)}
; Z = +oo {+ 0 1024 (1.#INF)}
; -1.4880181215783514492301264908746816217899322509765625p217 x 1.4380810769207792443324933628900907933712005615234375p-1013 +oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011011000 #b0111110011101110110000010111000000001000110011001001)))
(assert (= y (fp #b0 #b00000001010 #b0111000000100110000101001101101001011111000001110111)))
(assert (= z (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
