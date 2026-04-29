(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.315435714980311754374042720883153378963470458984375p-854 {+ 1420596168444678 -854 (1.0951e-257)}
; Y = 1.21521462643825284288823240785859525203704833984375p16 {+ 969240511431996 16 (79640.3)}
; 1.315435714980311754374042720883153378963470458984375p-854 < 1.21521462643825284288823240785859525203704833984375p16 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010101001 #b0101000011000000011001010001111111010100101100000110)))
(assert (= y (fp #b0 #b10000001111 #b0011011100011000010011100100011000101100010100111100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
