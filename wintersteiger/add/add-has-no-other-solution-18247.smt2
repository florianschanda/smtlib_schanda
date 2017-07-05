(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.756457382197134098333890506182797253131866455078125p455 {- 3406781184584674 455 (-1.63413e+137)}
; Y = -1.392494972856272994476967141963541507720947265625p-459 {- 1767640213500304 -459 (-9.35461e-139)}
; -1.756457382197134098333890506182797253131866455078125p455 + -1.392494972856272994476967141963541507720947265625p-459 == -1.7564573821971343203784954312141053378582000732421875p455
; [HW: -1.7564573821971343203784954312141053378582000732421875p455] 

; mpf : - 3406781184584675 455
; mpfd: - 3406781184584675 455 (-1.63413e+137) class: Neg. norm. non-zero
; hwf : - 3406781184584675 455 (-1.63413e+137) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000110 #b1100000110100111001100001110010101011010101111100010)))
(assert (= y (fp #b1 #b01000110100 #b0110010001111010100011001111000001000011000110010000)))
(assert (= r (fp #b1 #b10111000110 #b1100000110100111001100001110010101011010101111100011)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
