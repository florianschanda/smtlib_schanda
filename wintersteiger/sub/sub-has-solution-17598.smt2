(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7016560834887848319141312458668835461139678955078125p840 {- 3159978076142333 840 (-1.24758e+253)}
; Y = 1.1333476710625323136127917678095400333404541015625p-516 {+ 600544521707944 -516 (5.28306e-156)}
; -1.7016560834887848319141312458668835461139678955078125p840 - 1.1333476710625323136127917678095400333404541015625p-516 == -1.7016560834887848319141312458668835461139678955078125p840
; [HW: -1.7016560834887848319141312458668835461139678955078125p840] 

; mpf : - 3159978076142333 840
; mpfd: - 3159978076142333 840 (-1.24758e+253) class: Neg. norm. non-zero
; hwf : - 3159978076142333 840 (-1.24758e+253) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101000111 #b1011001110011111101110111010101110011111101011111101)))
(assert (= y (fp #b0 #b00111111011 #b0010001000100011000100101010111000110110000110101000)))
(assert (= r (fp #b1 #b11101000111 #b1011001110011111101110111010101110011111101011111101)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
