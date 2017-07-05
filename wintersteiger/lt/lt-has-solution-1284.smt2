(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.914286761766155198216665667132474482059478759765625p-1012 {- 4117581519599834 -1012 (-4.36166e-305)}
; Y = -1.320097361091838283897459405125118792057037353515625p770 {- 1441590356135482 770 (-8.1979e+231)}
; -1.914286761766155198216665667132474482059478759765625p-1012 < -1.320097361091838283897459405125118792057037353515625p770 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000001011 #b1110101000001110101100100111110011110011100011011010)))
(assert (= y (fp #b1 #b11100000001 #b0101000111110001111001101001000101101100111000111010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
