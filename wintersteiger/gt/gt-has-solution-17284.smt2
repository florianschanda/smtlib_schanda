(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2695745131372782044110181232099421322345733642578125p-84 {+ 1214055676913629 -84 (6.56355e-026)}
; Y = -1.928067707720159784656743795494548976421356201171875p324 {- 4179645382663102 324 (-6.58932e+097)}
; 1.2695745131372782044110181232099421322345733642578125p-84 > -1.928067707720159784656743795494548976421356201171875p324 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101011 #b0100010100000010110101011101010111000010011111011101)))
(assert (= y (fp #b1 #b10101000011 #b1110110110010101110110000110010100100001101110111110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
