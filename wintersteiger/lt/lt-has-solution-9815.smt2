(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0224161897543468935367627636878751218318939208984375p499 {+ 100953543824743 499 (1.67338e+150)}
; Y = 1.23308528672882733445703706820495426654815673828125p-774 {+ 1049722810457492 -774 (1.24101e-233)}
; 1.0224161897543468935367627636878751218318939208984375p499 < 1.23308528672882733445703706820495426654815673828125p-774 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111110010 #b0000010110111101000100010100000111100101010101100111)))
(assert (= y (fp #b0 #b00011111001 #b0011101110101011011110100011001110101101110110010100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
