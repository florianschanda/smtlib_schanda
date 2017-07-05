(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.95260248112389422914247916196472942829132080078125p-273 {+ 4290140179021780 -273 (1.28655e-082)}
; Y = -1.390238494437899152700310878572054207324981689453125p-317 {- 1757477938136146 -317 (-5.20692e-096)}
; 1.95260248112389422914247916196472942829132080078125p-273 > -1.390238494437899152700310878572054207324981689453125p-317 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011101110 #b1111001111011101110000011001011010000011111111010100)))
(assert (= y (fp #b1 #b01011000010 #b0110001111100110101010111000001101000000010001010010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
