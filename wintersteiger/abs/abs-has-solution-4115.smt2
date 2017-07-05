(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.885699910160545389459230136708356440067291259765625p156 {- 3988837785361114 156 (-1.72247e+047)}
; -1.885699910160545389459230136708356440067291259765625p156 | == 1.885699910160545389459230136708356440067291259765625p156
; [HW: 1.885699910160545389459230136708356440067291259765625p156] 

; mpf : + 3988837785361114 156
; mpfd: + 3988837785361114 156 (1.72247e+047) class: Pos. norm. non-zero
; hwf : + 3988837785361114 156 (1.72247e+047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010011011 #b1110001010111101001110101011010000110101101011011010)))
(assert (= r (fp #b0 #b10010011011 #b1110001010111101001110101011010000110101101011011010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
