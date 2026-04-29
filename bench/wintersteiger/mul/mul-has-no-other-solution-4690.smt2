(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.574980543830682311323698741034604609012603759765625p931 {- 2589482162941146 931 (-2.85891e+280)}
; Y = 1.0225812872594992608554775870288722217082977294921875p371 {+ 101697076887427 371 (4.91843e+111)}
; -1.574980543830682311323698741034604609012603759765625p931 * 1.0225812872594992608554775870288722217082977294921875p371 == -oo
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
(assert (= x (fp #b1 #b11110100010 #b1001001100110001111011001100011110010110110011011010)))
(assert (= y (fp #b0 #b10101110010 #b0000010111000111111000110010001001000111111110000011)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
