(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.543231266176092741915226724813692271709442138671875p-953 {- 2446496127926654 -953 (-2.02696e-287)}
; Y = -1.89391388249380643316044370294548571109771728515625p143 {- 4025830228100420 143 (-2.11178e+043)}
; -1.543231266176092741915226724813692271709442138671875p-953 > -1.89391388249380643316044370294548571109771728515625p143 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001000110 #b1000101100010001001101000100101001100100000101111110)))
(assert (= y (fp #b1 #b10010001110 #b1110010011010111100010100100101011000000010101000100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
