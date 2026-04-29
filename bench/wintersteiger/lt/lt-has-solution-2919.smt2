(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.170899982014215634507081631454639136791229248046875p352 {+ 769665095316846 352 (1.07418e+106)}
; Y = -1.05945763204173548643893809639848768711090087890625p-364 {- 267773369507492 -364 (-2.81946e-110)}
; 1.170899982014215634507081631454639136791229248046875p352 < -1.05945763204173548643893809639848768711090087890625p-364 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101011111 #b0010101111000000000110011110100110100011010101101110)))
(assert (= y (fp #b1 #b01010010011 #b0000111100111000100111011000100100011101111010100100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
