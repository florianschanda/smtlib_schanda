(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8869377819687132014081498709856532514095306396484375p-624 {- 3994412664375111 -624 (-2.71044e-188)}
; Y = +zero {+ 0 -1023 (0)}
; -1.8869377819687132014081498709856532514095306396484375p-624 - +zero == -1.8869377819687132014081498709856532514095306396484375p-624
; [HW: -1.8869377819687132014081498709856532514095306396484375p-624] 

; mpf : - 3994412664375111 -624
; mpfd: - 3994412664375111 -624 (-2.71044e-188) class: Neg. norm. non-zero
; hwf : - 3994412664375111 -624 (-2.71044e-188) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110001111 #b1110001100001110010110101011111100100100011101000111)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b00110001111 #b1110001100001110010110101011111100100100011101000111)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
