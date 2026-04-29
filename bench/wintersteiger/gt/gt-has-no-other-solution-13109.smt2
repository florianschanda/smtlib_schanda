(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6841972017709618825165307498537003993988037109375p-113 {+ 3081350262943640 -113 (1.62182e-034)}
; Y = 1.797708059143023451298404324916191399097442626953125p-214 {+ 3592557717906962 -214 (6.8281e-065)}
; 1.6841972017709618825165307498537003993988037109375p-113 > 1.797708059143023451298404324916191399097442626953125p-214 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110001110 #b1010111100100111100011000011110110011110111110011000)))
(assert (= y (fp #b0 #b01100101001 #b1100110000110110100110000110100111000110011000010010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
