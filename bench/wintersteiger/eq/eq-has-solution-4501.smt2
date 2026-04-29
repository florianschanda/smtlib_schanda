(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.056430701045224740397543428116478025913238525390625p-604 {- 254141284199530 -604 (-1.5912e-182)}
; Y = 1.7263247015873617318248989249696023762226104736328125p-692 {+ 3271075655418829 -692 (8.40167e-209)}
; -1.056430701045224740397543428116478025913238525390625p-604 = 1.7263247015873617318248989249696023762226104736328125p-692 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110100011 #b0000111001110010001111100000111101111010110001101010)))
(assert (= y (fp #b0 #b00101001011 #b1011100111110000011010100110011110011000001111001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
