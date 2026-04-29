(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.376157832113655832273479973082430660724639892578125p558 {- 1694064272539554 558 (-1.29839e+168)}
; Y = 1.925137641273313438006198339280672371387481689453125p-650 {+ 4166449536504914 -650 (4.12064e-196)}
; -1.376157832113655832273479973082430660724639892578125p558 < 1.925137641273313438006198339280672371387481689453125p-650 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000101101 #b0110000001001011111000010011001100001111111110100010)))
(assert (= y (fp #b0 #b00101110101 #b1110110011010101110100100000100110010001010001010010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
