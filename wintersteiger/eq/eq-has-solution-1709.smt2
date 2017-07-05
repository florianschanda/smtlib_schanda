(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7702078120982971398689187481068074703216552734375p-488 {- 3468707615563736 -488 (-2.21506e-147)}
; Y = -1.8192454885126203567580205344711430370807647705078125p620 {- 3689553676790397 620 (-7.91569e+186)}
; -1.7702078120982971398689187481068074703216552734375p-488 = -1.8192454885126203567580205344711430370807647705078125p620 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000010111 #b1100010100101100010101101101010000010101111111011000)))
(assert (= y (fp #b1 #b11001101011 #b1101000110111010000100101000010010001110101001111101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
