(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.1390537525521786665905210611526854336261749267578125p-650 {+ 626242428178461 -650 (2.43807e-196)}
; -oo - 1.1390537525521786665905210611526854336261749267578125p-650 == -oo
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
(assert (= y (fp #b0 #b00101110101 #b0010001110011001000001101101011110011001000000011101)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
