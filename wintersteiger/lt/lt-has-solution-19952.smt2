(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.474513132331281894948915578424930572509765625p-123 {- 2137017165949568 -123 (-1.38663e-037)}
; Y = -1.3104842879620435258658517341245897114276885986328125p-615 {- 1398296923570253 -615 (-9.63795e-186)}
; -1.474513132331281894948915578424930572509765625p-123 < -1.3104842879620435258658517341245897114276885986328125p-615 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110000100 #b0111100101111001101100010101000011100010101010000000)))
(assert (= y (fp #b1 #b00110011000 #b0100111101111011111001011111011010111000000001001101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
