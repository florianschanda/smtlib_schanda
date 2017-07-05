(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.6058809804740283855295501780346967279911041259765625p-386 {+ 2728645357893705 -386 (1.01891e-116)}
; -oo + 1.6058809804740283855295501780346967279911041259765625p-386 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b01001111101 #b1001101100011011000001000001010001100111100001001001)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
