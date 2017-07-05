(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2663655885791211819224599821609444916248321533203125p955 {- 1199603965469253 955 (-3.8566e+287)}
; Y = -1.75326339753675686239375863806344568729400634765625p-394 {- 3392396756458372 -394 (-4.34539e-119)}
; -1.2663655885791211819224599821609444916248321533203125p955 < -1.75326339753675686239375863806344568729400634765625p-394 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111010 #b0100010000110000100010010000001110111010001001000101)))
(assert (= y (fp #b1 #b01001110101 #b1100000011010101110111101011100110110001101110000100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
