(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.2787075450916798313727440472575835883617401123046875p805 {+ 1255187196220235 805 (2.72846e+242)}
; +oo + 1.2787075450916798313727440472575835883617401123046875p805 == +oo
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
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b11100100100 #b0100011101011001011000001010111101010001001101001011)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
