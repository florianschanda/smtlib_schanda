(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7342708717109669436240437789820134639739990234375p194 {+ 3306862024226520 194 (4.35448e+058)}
; Y = 1.1962627613771357193428457321715541183948516845703125p-840 {+ 883888899004773 -840 (1.63166e-253)}
; 1.7342708717109669436240437789820134639739990234375p194 / 1.1962627613771357193428457321715541183948516845703125p-840 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011000001 #b1011101111111001001011010000010001100111011011011000)))
(assert (= y (fp #b0 #b00010110111 #b0011001000111110010001101011110110001001100101100101)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
