(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6986096032982118675391802753438241779804229736328125p634 {+ 3146257949091277 634 (1.21091e+191)}
; Y = 1.78708647746404469813796822563745081424713134765625p-700 {+ 3544722366615428 -700 (3.39742e-211)}
; 1.6986096032982118675391802753438241779804229736328125p634 > 1.78708647746404469813796822563745081424713134765625p-700 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001111001 #b1011001011011000000101000011011011010110010111001101)))
(assert (= y (fp #b0 #b00101000011 #b1100100101111110011111111101011111010100111110000100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
