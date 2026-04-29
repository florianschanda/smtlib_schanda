(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6177706432635883260218179202638566493988037109375p-200 {- 2782191638802328 -200 (-1.00674e-060)}
; Y = 1.5160434046480422143332589257624931633472442626953125p435 {+ 2324052884879925 435 (1.34512e+131)}
; -1.6177706432635883260218179202638566493988037109375p-200 = 1.5160434046480422143332589257624931633472442626953125p435 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100110111 #b1001111000100110001101111000010100111110111110011000)))
(assert (= y (fp #b0 #b10110110010 #b1000010000011011011010111010101001000111101000110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
