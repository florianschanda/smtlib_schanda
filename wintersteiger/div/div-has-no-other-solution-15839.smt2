(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3208649592265064853791045607067644596099853515625p-277 {- 1445047310808744 -277 (-5.43938e-084)}
; Y = 1.110788716788574159721747491857968270778656005859375p155 {+ 498948023645878 155 (5.07319e+046)}
; -1.3208649592265064853791045607067644596099853515625p-277 / 1.110788716788574159721747491857968270778656005859375p155 == -1.1891234933005876417411172951688058674335479736328125p-432
; [HW: -1.1891234933005876417411172951688058674335479736328125p-432] 

; mpf : - 851736493955533 -432
; mpfd: - 851736493955533 -432 (-1.07218e-130) class: Neg. norm. non-zero
; hwf : - 851736493955533 -432 (-1.07218e-130) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011101010 #b0101001000100100001101001011101001001111011010101000)))
(assert (= y (fp #b0 #b10010011010 #b0001110001011100101001100011101101011111011010110110)))
(assert (= r (fp #b1 #b01001001111 #b0011000001101010011001011011001010100001100111001101)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
