(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7871940873821208217719913591281510889530181884765625p-173 {- 3545206998602377 -173 (-1.49273e-052)}
; Y = -1.6709037143569152039646041885134764015674591064453125p215 {- 3021481717979285 215 (-8.79833e+064)}
; -1.7871940873821208217719913591281510889530181884765625p-173 + -1.6709037143569152039646041885134764015674591064453125p215 == -1.6709037143569152039646041885134764015674591064453125p215
; [HW: -1.6709037143569152039646041885134764015674591064453125p215] 

; mpf : - 3021481717979285 215
; mpfd: - 3021481717979285 215 (-8.79833e+064) class: Neg. norm. non-zero
; hwf : - 3021481717979285 215 (-8.79833e+064) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101010010 #b1100100110000101100011010011110011101001001010001001)))
(assert (= y (fp #b1 #b10011010110 #b1010101111000000010110001000011111101101100010010101)))
(assert (= r (fp #b1 #b10011010110 #b1010101111000000010110001000011111101101100010010101)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
