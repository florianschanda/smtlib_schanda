(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8693171139035251737681164740934036672115325927734375p-762 {- 3915056230242711 -762 (-7.70595e-230)}
; Y = 1.3759211041643066852913079856080003082752227783203125p81 {+ 1692998144635077 81 (3.32677e+024)}
; Z = +oo {+ 0 1024 (1.#INF)}
; -1.8693171139035251737681164740934036672115325927734375p-762 x 1.3759211041643066852913079856080003082752227783203125p81 +oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100000101 #b1101111010001011100100001111111000010001100110010111)))
(assert (= y (fp #b0 #b10001010000 #b0110000000111100010111011001000001000011000011000101)))
(assert (= z (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
