(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9638696266736428430732530614477582275867462158203125p-999 {- 4340882891521157 -999 (-3.66562e-301)}
; Y = 1.6479303633469954970536264227121137082576751708984375p735 {+ 2918018942931559 735 (2.97842e+221)}
; -1.9638696266736428430732530614477582275867462158203125p-999 = 1.6479303633469954970536264227121137082576751708984375p735 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000011000 #b1111011011000000001010001110110000101011110010000101)))
(assert (= y (fp #b0 #b11011011110 #b1010010111011110110000111010100010101001001001100111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
