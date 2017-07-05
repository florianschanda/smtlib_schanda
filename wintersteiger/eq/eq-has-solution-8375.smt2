(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3759006680945289335937786745489574968814849853515625p-353 {- 1692906108758841 -353 (-7.49892e-107)}
; Y = 1.6893836588993378367007380802533589303493499755859375p-516 {+ 3104707989334367 -516 (7.875e-156)}
; -1.3759006680945289335937786745489574968814849853515625p-353 = 1.6893836588993378367007380802533589303493499755859375p-516 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010011110 #b0110000000111011000001101011010000000010101100111001)))
(assert (= y (fp #b0 #b00111111011 #b1011000001111011011100101000110101011110100101011111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
