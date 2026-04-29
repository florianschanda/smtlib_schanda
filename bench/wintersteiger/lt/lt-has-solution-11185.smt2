(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.65519904204490586607789737172424793243408203125p-611 {- 2950754161606944 -611 (-1.9477e-184)}
; Y = -1.517067318102421236147847594111226499080657958984375p312 {- 2328664181131526 312 (-1.2658e+094)}
; -1.65519904204490586607789737172424793243408203125p-611 < -1.517067318102421236147847594111226499080657958984375p312 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110011100 #b1010011110111011000111111101100111110100000100100000)))
(assert (= y (fp #b1 #b10100110111 #b1000010001011110100001100001010100010100100100000110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
