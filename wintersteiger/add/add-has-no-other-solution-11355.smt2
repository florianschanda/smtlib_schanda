(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5016165858505494679064895535702817142009735107421875p-924 {- 2259080269119395 -924 (-1.05887e-278)}
; Y = -1.1669435305707727135171580812311731278896331787109375p675 {- 751846822070447 675 (-1.82935e+203)}
; -1.5016165858505494679064895535702817142009735107421875p-924 + -1.1669435305707727135171580812311731278896331787109375p675 == -1.1669435305707727135171580812311731278896331787109375p675
; [HW: -1.1669435305707727135171580812311731278896331787109375p675] 

; mpf : - 751846822070447 675
; mpfd: - 751846822070447 675 (-1.82935e+203) class: Neg. norm. non-zero
; hwf : - 751846822070447 675 (-1.82935e+203) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001100011 #b1000000001101001111100011100111101011011111110100011)))
(assert (= y (fp #b1 #b11010100010 #b0010101010111100110011111010110000010100100010101111)))
(assert (= r (fp #b1 #b11010100010 #b0010101010111100110011111010110000010100100010101111)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
