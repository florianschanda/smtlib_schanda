(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4703186383016717542204787605442106723785400390625p-84 {+ 2118126844200808 -84 (7.60137e-026)}
; Y = -1.8547073805144884683926420620991848409175872802734375p-429 {- 3849259840395863 -429 (-1.33785e-129)}
; 1.4703186383016717542204787605442106723785400390625p-84 = -1.8547073805144884683926420620991848409175872802734375p-429 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101011 #b0111100001100110110011010110001000110100011101101000)))
(assert (= y (fp #b1 #b01001010010 #b1101101011001110000110100101011011110101101001010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
