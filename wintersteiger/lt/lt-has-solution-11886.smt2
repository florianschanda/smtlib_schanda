(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.998142414079397521931014125584624707698822021484375p-470 {+ 4495233804110662 -470 (6.55433e-142)}
; Y = -1.1584410435880574397060627234168350696563720703125p-114 {- 713555024863368 -114 (-5.57769e-035)}
; 1.998142414079397521931014125584624707698822021484375p-470 < -1.1584410435880574397060627234168350696563720703125p-114 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000101001 #b1111111110000110010000101110000100111000101101000110)))
(assert (= y (fp #b1 #b01110001101 #b0010100010001111100101111001110010001110000010001000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
