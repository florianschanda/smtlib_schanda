(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2092423212329175274959425223642028868198394775390625p-331 {+ 942343639934705 -331 (2.7643e-100)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.2092423212329175274959425223642028868198394775390625p-331 - +oo == -oo
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
(assert (= x (fp #b0 #b01010110100 #b0011010110010000111001111001111010100010011011110001)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
