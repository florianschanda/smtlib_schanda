(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1951488152412717003159059458994306623935699462890625p-448 {+ 878872131602385 -448 (1.64431e-135)}
; Y = 1.771342016563754118152473893132992088794708251953125p463 {+ 3473815618371730 463 (4.21881e+139)}
; 1.1951488152412717003159059458994306623935699462890625p-448 = 1.771342016563754118152473893132992088794708251953125p463 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111111 #b0011000111110101010001011101001101010000011111010001)))
(assert (= y (fp #b0 #b10111001110 #b1100010101110110101010111001111100101100000010010010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
