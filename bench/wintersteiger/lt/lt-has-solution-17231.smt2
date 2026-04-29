(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.438972702093907596321287201135419309139251708984375p-219 {- 1976957297575942 -219 (-1.70798e-066)}
; Y = 1.8191160754149267031465342370211146771907806396484375p710 {+ 3688970852011847 710 (9.79845e+213)}
; -1.438972702093907596321287201135419309139251708984375p-219 < 1.8191160754149267031465342370211146771907806396484375p710 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100100 #b0111000001100000100000111101011101010100100000000110)))
(assert (= y (fp #b0 #b11011000101 #b1101000110110001100101110101001110001000111101000111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
