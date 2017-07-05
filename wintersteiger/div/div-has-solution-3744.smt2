(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4169017034883604200246054460876621305942535400390625p-45 {- 1877558356480305 -45 (-4.02708e-014)}
; Y = 1.2926117726166304056079070505802519619464874267578125p-97 {+ 1317806270120477 -97 (8.15753e-030)}
; -1.4169017034883604200246054460876621305942535400390625p-45 / 1.2926117726166304056079070505802519619464874267578125p-97 == -1.0961541071377760570015880148275755345821380615234375p52
; [HW: -1.0961541071377760570015880148275755345821380615234375p52] 

; mpf : - 433039601075831 52
; mpfd: - 433039601075831 52 (-4.93664e+015) class: Neg. norm. non-zero
; hwf : - 433039601075831 52 (-4.93664e+015) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111010010 #b0110101010111010000100011110111000100001000100110001)))
(assert (= y (fp #b0 #b01110011110 #b0100101011101000100110101110100111010000001000011101)))
(assert (= r (fp #b1 #b10000110011 #b0001100010011101100011100011100110001000011001110111)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
