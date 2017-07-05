(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5978508650379283917430939254700206220149993896484375p-23 {- 2692480933007943 -23 (-1.90479e-007)}
; Y = 1.886676241311887824991799789131619036197662353515625p220 {+ 3993234789970490 220 (3.17904e+066)}
; -1.5978508650379283917430939254700206220149993896484375p-23 < 1.886676241311887824991799789131619036197662353515625p220 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111101000 #b1001100100001100110000010001100100111001001001000111)))
(assert (= y (fp #b0 #b10011011011 #b1110001011111101001101101101001010010011001000111010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
