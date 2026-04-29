(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7673927550373491612845100462436676025390625p929 {+ 3456029725633024 929 (8.02046e+279)}
; Y = -1.611698449048116543735886807553470134735107421875p461 {- 2754844907196208 461 (-9.59648e+138)}
; 1.7673927550373491612845100462436676025390625p929 * -1.611698449048116543735886807553470134735107421875p461 == -oo
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
(assert (= x (fp #b0 #b11110100000 #b1100010001110011110110100000001000010010101000000000)))
(assert (= y (fp #b1 #b10111001100 #b1001110010011000010001010000000110101100111100110000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
