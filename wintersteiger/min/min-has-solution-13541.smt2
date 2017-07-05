(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1269906826416538070390060966019518673419952392578125p834 {- 571915191024477 834 (-1.29103e+251)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.1269906826416538070390060966019518673419952392578125p834 m +oo == -1.1269906826416538070390060966019518673419952392578125p834
; [HW: -1.1269906826416538070390060966019518673419952392578125p834] 

; mpf : - 571915191024477 834
; mpfd: - 571915191024477 834 (-1.29103e+251) class: Neg. norm. non-zero
; hwf : - 571915191024477 834 (-1.29103e+251) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101000001 #b0010000010000010011101100001110011010111101101011101)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b11101000001 #b0010000010000010011101100001110011010111101101011101)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
