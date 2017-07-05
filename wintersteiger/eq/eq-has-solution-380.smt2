(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.38683924038504091669210538384504616260528564453125p-318 {- 1742169058850356 -318 (-2.59709e-096)}
; Y = 1.07466375888716481057372220675460994243621826171875p-340 {+ 336255676702316 -340 (4.79815e-103)}
; -1.38683924038504091669210538384504616260528564453125p-318 = 1.07466375888716481057372220675460994243621826171875p-340 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011000001 #b0110001100000111111001010111111001000011011000110100)))
(assert (= y (fp #b0 #b01010101011 #b0001001100011101001010100000001010011101111001101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
