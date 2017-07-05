(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3776330360248680850787650342681445181369781494140625p-699 {- 1700708000324385 -699 (-5.23801e-211)}
; Y = -1.9917452320662427656117188234929926693439483642578125p-957 {- 4466423457579997 -957 (-1.63504e-288)}
; -1.3776330360248680850787650342681445181369781494140625p-699 < -1.9917452320662427656117188234929926693439483642578125p-957 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000100 #b0110000010101100100011110000001110011101101100100001)))
(assert (= y (fp #b1 #b00001000010 #b1111110111100011000000111111100110110000001111011101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
