(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.258042012565416367664283825433813035488128662109375p326 {+ 1162117911635542 326 (1.71978e+098)}
; Y = -1.5186261057322261169844068717793561518192291259765625p-195 {- 2335684336520265 -195 (-3.02414e-059)}
; 1.258042012565416367664283825433813035488128662109375p326 > -1.5186261057322261169844068717793561518192291259765625p-195 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101000101 #b0100001000001111000010101001010011110110011001010110)))
(assert (= y (fp #b1 #b01100111100 #b1000010011000100101011100011001011111000110001001001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
