(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2050484911888983408090325610828585922718048095703125p-33 {- 923456308511205 -33 (-1.40286e-010)}
; Y = 1.4617352390956883656514264657744206488132476806640625p180 {+ 2079470650735169 180 (2.2401e+054)}
; -1.2050484911888983408090325610828585922718048095703125p-33 / 1.4617352390956883656514264657744206488132476806640625p180 == -1.648791735956792070538767802645452320575714111328125p-214
; [HW: -1.648791735956792070538767802645452320575714111328125p-214] 

; mpf : - 2921898220296066 -214
; mpfd: - 2921898220296066 -214 (-6.26249e-065) class: Neg. norm. non-zero
; hwf : - 2921898220296066 -214 (-6.26249e-065) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111011110 #b0011010001111110000011101101001111000000000111100101)))
(assert (= y (fp #b0 #b10010110011 #b0111011000110100010001111101011101010011101001000001)))
(assert (= r (fp #b1 #b01100101001 #b1010011000010111001101110001011111011001011110000010)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
