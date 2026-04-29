(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.5405136230254605766987197057460434734821319580078125p-240 {- 2434256951246141 -240 (-8.719e-073)}
; +oo m -1.5405136230254605766987197057460434734821319580078125p-240 == -1.5405136230254605766987197057460434734821319580078125p-240
; [HW: -1.5405136230254605766987197057460434734821319580078125p-240] 

; mpf : - 2434256951246141 -240
; mpfd: - 2434256951246141 -240 (-8.719e-073) class: Neg. norm. non-zero
; hwf : - 2434256951246141 -240 (-8.719e-073) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b01100001111 #b1000101001011111000110011100110111101111110100111101)))
(assert (= r (fp #b1 #b01100001111 #b1000101001011111000110011100110111101111110100111101)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
