(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5687163718210666019103882717899978160858154296875p-49 {+ 2561270840212856 -49 (2.7866e-015)}
; Y = -1.2092263656330646259817740428843535482883453369140625p-521 {- 942271782301153 -521 (-1.76149e-157)}
; 1.5687163718210666019103882717899978160858154296875p-49 < -1.2092263656330646259817740428843535482883453369140625p-521 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111001110 #b1001000110010111011001010110100110101011110101111000)))
(assert (= y (fp #b1 #b00111110110 #b0011010110001111110110111110110111011010110111100001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
