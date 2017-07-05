(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.472431043648872783791148322052322328090667724609375p-925 {- 2127640272135318 -925 (-5.19145e-279)}
; Y = 1.7028008618467695978182518956600688397884368896484375p-671 {+ 3165133699528775 -671 (1.73795e-202)}
; -1.472431043648872783791148322052322328090667724609375p-925 > 1.7028008618467695978182518956600688397884368896484375p-671 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100010 #b0111100011110001001111011010101000010110010010010110)))
(assert (= y (fp #b0 #b00101100000 #b1011001111101010110000011101110100111011100001000111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
