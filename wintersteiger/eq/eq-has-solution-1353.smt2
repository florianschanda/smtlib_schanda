(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.30487340393574680064148196834139525890350341796875p161 {- 1373027748360204 161 (-3.81415e+048)}
; Y = -1.8261998400257077879160760858212597668170928955078125p-746 {- 3720873291673341 -746 (-4.93369e-225)}
; -1.30487340393574680064148196834139525890350341796875p161 = -1.8261998400257077879160760858212597668170928955078125p-746 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010100000 #b0100111000001100001011101111001101010011000000001100)))
(assert (= y (fp #b1 #b00100010101 #b1101001110000001110101010010110011011110111011111101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
