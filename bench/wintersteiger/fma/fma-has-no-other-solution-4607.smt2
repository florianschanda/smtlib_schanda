(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0678360071354917604224965543835423886775970458984375p-734 {- 305506216457703 -734 (-1.18165e-221)}
; Y = 1.653084979392243081264268766972236335277557373046875p-599 {+ 2941233269832174 -599 (7.9676e-181)}
; Z = -zero {- 0 -1023 (-0)}
; -1.0678360071354917604224965543835423886775970458984375p-734 x 1.653084979392243081264268766972236335277557373046875p-599 -zero == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100100001 #b0001000101011101101100110101100000100011010111100111)))
(assert (= y (fp #b0 #b00110101000 #b1010011100110000100100111100001111111111100111101110)))
(assert (= z (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
