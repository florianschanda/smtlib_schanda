(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1101505463683480900982658567954786121845245361328125p545 {+ 496073959579149 545 (1.27858e+164)}
; Y = -1.5913169684251802227237249098834581673145294189453125p-539 {- 2663054878657493 -539 (-8.84278e-163)}
; 1.1101505463683480900982658567954786121845245361328125p545 * -1.5913169684251802227237249098834581673145294189453125p-539 == -1.7666014019424369774213801065343432128429412841796875p6
; [HW: -1.7666014019424369774213801065343432128429412841796875p6] 

; mpf : - 3452465788129659 6
; mpfd: - 3452465788129659 6 (-113.062) class: Neg. norm. non-zero
; hwf : - 3452465788129659 6 (-113.062) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100000 #b0001110000110010110100111000001001001001111000001101)))
(assert (= y (fp #b1 #b00111100100 #b1001011101100000100011001000000011110100101111010101)))
(assert (= r (fp #b1 #b10000000101 #b1100010000111111111111010100111001101001000101111011)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
