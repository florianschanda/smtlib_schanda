(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4531150655490467915598173931357450783252716064453125p-399 {+ 2040648840362645 -399 (1.12546e-120)}
; Y = -1.093090833680530948868181440047919750213623046875p286 {- 419243843875248 286 (-1.35905e+086)}
; 1.4531150655490467915598173931357450783252716064453125p-399 < -1.093090833680530948868181440047919750213623046875p286 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001110000 #b0111001111111111010110010101001111011011101010010101)))
(assert (= y (fp #b1 #b10100011101 #b0001011111010100110011010000011000110111000110110000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
