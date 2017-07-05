(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.896193941335679422621751655242405831813812255859375p697 {- 4036098700251062 697 (-1.24678e+210)}
; Y = +zero {+ 0 -1023 (0)}
; -1.896193941335679422621751655242405831813812255859375p697 m +zero == -1.896193941335679422621751655242405831813812255859375p697
; [HW: -1.896193941335679422621751655242405831813812255859375p697] 

; mpf : - 4036098700251062 697
; mpfd: - 4036098700251062 697 (-1.24678e+210) class: Neg. norm. non-zero
; hwf : - 4036098700251062 697 (-1.24678e+210) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111000 #b1110010101101100111101110101010011101000111110110110)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b11010111000 #b1110010101101100111101110101010011101000111110110110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
