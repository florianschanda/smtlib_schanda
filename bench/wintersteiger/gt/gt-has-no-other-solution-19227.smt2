(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.101592802666533810196369813638739287853240966796875p-551 {+ 457533308232526 -551 (1.49449e-166)}
; Y = -1.0615804161646209546887575925211422145366668701171875p601 {- 277333539292307 601 (-8.81009e+180)}
; 1.101592802666533810196369813638739287853240966796875p-551 > -1.0615804161646209546887575925211422145366668701171875p601 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111011000 #b0001101000000001111111000110010011110110001101001110)))
(assert (= y (fp #b1 #b11001011000 #b0000111111000011101110111111000110000000010010010011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
