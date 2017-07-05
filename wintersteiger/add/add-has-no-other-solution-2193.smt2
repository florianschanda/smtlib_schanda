(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4772988536236051348993214560323394834995269775390625p-40 {+ 2149562939323633 -40 (1.3436e-012)}
; Y = 1.958943877308509939894065610133111476898193359375p-947 {+ 4318699288515824 -947 (1.64671e-285)}
; 1.4772988536236051348993214560323394834995269775390625p-40 + 1.958943877308509939894065610133111476898193359375p-947 == 1.4772988536236051348993214560323394834995269775390625p-40
; [HW: 1.4772988536236051348993214560323394834995269775390625p-40] 

; mpf : + 2149562939323633 -40
; mpfd: + 2149562939323633 -40 (1.3436e-012) class: Pos. norm. non-zero
; hwf : + 2149562939323633 -40 (1.3436e-012) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111010111 #b0111101000110000010000011111011010111011010011110001)))
(assert (= y (fp #b0 #b00001001100 #b1111010101111101010110001000111110111101010011110000)))
(assert (= r (fp #b0 #b01111010111 #b0111101000110000010000011111011010111011010011110001)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
