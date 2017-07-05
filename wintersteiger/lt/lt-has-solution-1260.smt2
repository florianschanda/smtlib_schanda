(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.51060032343279093680621372186578810214996337890625p-988 {- 2299539426347172 -988 (-5.77449e-298)}
; Y = 1.7211614870799198939721463830210268497467041015625p-311 {+ 3247822604487080 -311 (4.12566e-094)}
; -1.51060032343279093680621372186578810214996337890625p-988 < 1.7211614870799198939721463830210268497467041015625p-311 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000100011 #b1000001010110110101100111110101001111000100010100100)))
(assert (= y (fp #b0 #b01011001000 #b1011100010011110000010100000101000100100100110101000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
