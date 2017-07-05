(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.721810378139646768858028735849075019359588623046875p515 {- 3250744950021870 515 (-1.84686e+155)}
; Y = -1.1459877709907153597868045835639350116252899169921875p-731 {- 657470471034435 -731 (-1.0145e-220)}
; -1.721810378139646768858028735849075019359588623046875p515 < -1.1459877709907153597868045835639350116252899169921875p-731 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000000010 #b1011100011001000100100001010000000000101111011101110)))
(assert (= y (fp #b1 #b00100100100 #b0010010101011111011101000101111000000101011001000011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
