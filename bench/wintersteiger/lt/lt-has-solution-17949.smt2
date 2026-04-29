(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2959262745481294754057444151840172708034515380859375p363 {- 1332733459784095 363 (-2.43483e+109)}
; Y = 1.7114972835582287213895824606879614293575286865234375p-732 {+ 3204298901107959 -732 (7.57564e-221)}
; -1.2959262745481294754057444151840172708034515380859375p363 < 1.7114972835582287213895824606879614293575286865234375p-732 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101101010 #b0100101111000001110100110000011100110110000110011111)))
(assert (= y (fp #b0 #b00100100011 #b1011011000100100101011111001110000010011010011110111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
