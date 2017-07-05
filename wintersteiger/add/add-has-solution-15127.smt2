(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1465328650901691620589417652809061110019683837890625p-654 {+ 659925356617617 -654 (1.5338e-197)}
; Y = -1.770303969318422598888673746841959655284881591796875p-499 {- 3469140669184462 -499 (-1.08163e-150)}
; 1.1465328650901691620589417652809061110019683837890625p-654 + -1.770303969318422598888673746841959655284881591796875p-499 == -1.770303969318422598888673746841959655284881591796875p-499
; [HW: -1.770303969318422598888673746841959655284881591796875p-499] 

; mpf : - 3469140669184462 -499
; mpfd: - 3469140669184462 -499 (-1.08163e-150) class: Neg. norm. non-zero
; hwf : - 3469140669184462 -499 (-1.08163e-150) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101110001 #b0010010110000011001011011000011101011001111110010001)))
(assert (= y (fp #b1 #b01000001100 #b1100010100110010101001000001010000110011100111001110)))
(assert (= r (fp #b1 #b01000001100 #b1100010100110010101001000001010000110011100111001110)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
