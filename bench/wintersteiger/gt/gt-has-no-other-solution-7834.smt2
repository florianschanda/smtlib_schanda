(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1254369623158322344380621871096082031726837158203125p555 {+ 564917856744069 555 (1.3273e+167)}
; Y = 1.044816151767826273299988315557129681110382080078125p-472 {+ 201834004401762 -472 (8.56805e-143)}
; 1.1254369623158322344380621871096082031726837158203125p555 > 1.044816151767826273299988315557129681110382080078125p-472 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101010 #b0010000000011100101000110000001011011011001010000101)))
(assert (= y (fp #b0 #b01000100111 #b0000101101111001000100100100001000101100111001100010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
