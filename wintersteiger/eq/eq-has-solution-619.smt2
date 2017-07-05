(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.467704146768903594733046702458523213863372802734375p753 {- 2106352221108070 753 (-6.95385e+226)}
; Y = -1.9235455655597892832275874752667732536792755126953125p684 {- 4159279464914741 684 (-1.5439e+206)}
; -1.467704146768903594733046702458523213863372802734375p753 = -1.9235455655597892832275874752667732536792755126953125p684 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011110000 #b0111011110111011011101010111111010010011011101100110)))
(assert (= y (fp #b1 #b11010101011 #b1110110001101101011110110111000001110001111100110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
