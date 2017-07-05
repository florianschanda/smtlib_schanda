(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2313924094585029234139028631034307181835174560546875p-992 {- 1042098769013675 -992 (-2.94199e-299)}
; Y = -1.9198948148457406492894961047568358480930328369140625p-610 {- 4142837945359329 -610 (-4.51835e-184)}
; -1.2313924094585029234139028631034307181835174560546875p-992 + -1.9198948148457406492894961047568358480930328369140625p-610 == -1.9198948148457406492894961047568358480930328369140625p-610
; [HW: -1.9198948148457406492894961047568358480930328369140625p-610] 

; mpf : - 4142837945359329 -610
; mpfd: - 4142837945359329 -610 (-4.51835e-184) class: Neg. norm. non-zero
; hwf : - 4142837945359329 -610 (-4.51835e-184) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000011111 #b0011101100111100100010000110111100101010101110101011)))
(assert (= y (fp #b1 #b00110011101 #b1110101101111110001110100000000110000101101111100001)))
(assert (= r (fp #b1 #b00110011101 #b1110101101111110001110100000000110000101101111100001)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
