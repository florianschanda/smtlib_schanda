(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.626840356441139334719991893507540225982666015625p-360 {+ 2823037995689104 -360 (6.92702e-109)}
; Y = 1.1399765344278212086948087744531221687793731689453125p-255 {+ 630398268289749 -255 (1.96901e-077)}
; 1.626840356441139334719991893507540225982666015625p-360 < 1.1399765344278212086948087744531221687793731689453125p-255 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010111 #b1010000001111000100111000000111010111010010010010000)))
(assert (= y (fp #b0 #b01100000000 #b0010001111010101100000001000110110010011001011010101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
