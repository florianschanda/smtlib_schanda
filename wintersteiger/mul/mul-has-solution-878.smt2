(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.362806898644207453941135099739767611026763916015625p508 {- 1633937013541498 508 (-1.14202e+153)}
; Y = 1.3139919447025409926510519653675146400928497314453125p-213 {+ 1414094005159701 -213 (9.98168e-065)}
; -1.362806898644207453941135099739767611026763916015625p508 * 1.3139919447025409926510519653675146400928497314453125p-213 == -1.7907172870035410472411285809357650578022003173828125p295
; [HW: -1.7907172870035410472411285809357650578022003173828125p295] 

; mpf : - 3561074079104557 295
; mpfd: - 3561074079104557 295 (-1.13992e+089) class: Neg. norm. non-zero
; hwf : - 3561074079104557 295 (-1.13992e+089) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111111011 #b0101110011100000111010011011010001110000101001111010)))
(assert (= y (fp #b0 #b01100101010 #b0101000001100001110001101010110110110100011100010101)))
(assert (= r (fp #b1 #b10100100110 #b1100101001101100011100101011100000001111111000101101)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
