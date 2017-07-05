(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0979687671513265190270658422377891838550567626953125p371 {+ 441212103236661 371 (5.28103e+111)}
; Y = -1.724916601513928338107461968320421874523162841796875p-853 {- 3264734136452814 -853 (-2.87198e-257)}
; 1.0979687671513265190270658422377891838550567626953125p371 m -1.724916601513928338107461968320421874523162841796875p-853 == -1.724916601513928338107461968320421874523162841796875p-853
; [HW: -1.724916601513928338107461968320421874523162841796875p-853] 

; mpf : - 3264734136452814 -853
; mpfd: - 3264734136452814 -853 (-2.87198e-257) class: Neg. norm. non-zero
; hwf : - 3264734136452814 -853 (-2.87198e-257) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101110010 #b0001100100010100011110110010101011110001110000110101)))
(assert (= y (fp #b1 #b00010101010 #b1011100110010100001000100110011111010100011011001110)))
(assert (= r (fp #b1 #b00010101010 #b1011100110010100001000100110011111010100011011001110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
