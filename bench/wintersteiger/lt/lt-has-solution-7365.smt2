(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6270189121702369750011030191672034561634063720703125p444 {- 2823842139204133 444 (-7.39113e+133)}
; Y = -1.737279603400896821341348186251707375049591064453125p-938 {- 3320412147144146 -938 (-7.47711e-283)}
; -1.6270189121702369750011030191672034561634063720703125p444 < -1.737279603400896821341348186251707375049591064453125p-938 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110111011 #b1010000010000100010011111011100110111110101000100101)))
(assert (= y (fp #b1 #b00001010101 #b1011110010111110010110110010100010011101010111010010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
