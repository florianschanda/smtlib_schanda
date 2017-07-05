(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.003853452690677716674372277338989078998565673828125p-699 {- 17354408101826 -699 (-3.81683e-211)}
; Y = 1.5354253435517184467329343533492647111415863037109375p-536 {+ 2411341377704239 -536 (6.82576e-162)}
; -1.003853452690677716674372277338989078998565673828125p-699 < 1.5354253435517184467329343533492647111415863037109375p-536 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000100 #b0000000011111100100010100011010101001000011111000010)))
(assert (= y (fp #b0 #b00111100111 #b1000100100010001101000101010010000000001000100101111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
