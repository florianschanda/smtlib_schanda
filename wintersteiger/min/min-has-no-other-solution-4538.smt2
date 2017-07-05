(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.301729307429834836540294418227858841419219970703125p-38 {- 1358867996507762 -38 (-4.73566e-012)}
; Y = 1.078019004631169064367668397608213126659393310546875p-9 {+ 351366360184750 -9 (0.00210551)}
; -1.301729307429834836540294418227858841419219970703125p-38 m 1.078019004631169064367668397608213126659393310546875p-9 == -1.301729307429834836540294418227858841419219970703125p-38
; [HW: -1.301729307429834836540294418227858841419219970703125p-38] 

; mpf : - 1358867996507762 -38
; mpfd: - 1358867996507762 -38 (-4.73566e-012) class: Neg. norm. non-zero
; hwf : - 1358867996507762 -38 (-4.73566e-012) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111011001 #b0100110100111110001000011100001110100111111001110010)))
(assert (= y (fp #b0 #b01111110110 #b0001001111111001000011011011000101011011011110101110)))
(assert (= r (fp #b1 #b01111011001 #b0100110100111110001000011100001110100111111001110010)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
