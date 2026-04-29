(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.3492256129767825623133603585301898419857025146484375p-512 {- 1572772340470471 -512 (-1.0063e-154)}
; +oo / -1.3492256129767825623133603585301898419857025146484375p-512 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b00111111111 #b0101100101100110110110011000101010101001001011000111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
