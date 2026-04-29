(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0520396596317997950364997450378723442554473876953125p-254 {- 234365791726261 -254 (-3.63424e-077)}
; Y = -1.7847033109161818398291643461561761796474456787109375p-544 {- 3533989538638511 -544 (-3.09919e-164)}
; -1.0520396596317997950364997450378723442554473876953125p-254 = -1.7847033109161818398291643461561761796474456787109375p-544 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100000001 #b0000110101010010011110001001110000110110101010110101)))
(assert (= y (fp #b1 #b00111011111 #b1100100011100010010100001111000101110010101010101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
