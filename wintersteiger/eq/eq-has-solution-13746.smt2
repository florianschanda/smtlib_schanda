(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4298834714694483860597529201186262071132659912109375p606 {+ 1936023041922543 606 (3.79733e+182)}
; Y = 1.7781990131247205066955530128325335681438446044921875p787 {+ 3504696785528579 787 (1.44739e+237)}
; 1.4298834714694483860597529201186262071132659912109375p606 = 1.7781990131247205066955530128325335681438446044921875p787 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001011101 #b0110111000001100110101111101101100001101010111101111)))
(assert (= y (fp #b0 #b11100010010 #b1100011100111000000011001110111100100110011100000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
