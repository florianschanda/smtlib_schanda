(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0993692839957793783156603240058757364749908447265625p989 {- 447519470375465 989 (-5.75187e+297)}
; Y = 1.6016719147745435147811576825915835797786712646484375p-671 {+ 2709689411177927 -671 (1.63473e-202)}
; -1.0993692839957793783156603240058757364749908447265625p989 > 1.6016719147745435147811576825915835797786712646484375p-671 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111011100 #b0001100101110000010000111111000011111101001000101001)))
(assert (= y (fp #b0 #b00101100000 #b1001101000000111001010111010110011100000110111000111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
