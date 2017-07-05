(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1089153595059908496978096081875264644622802734375p-535 {- 490511172486104 -535 (-9.85941e-162)}
; Y = 1.451088239551250769210355429095216095447540283203125p-204 {+ 2031520827554226 -204 (5.64384e-062)}
; -1.1089153595059908496978096081875264644622802734375p-535 = 1.451088239551250769210355429095216095447540283203125p-204 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111101000 #b0001101111100001111000001000001100011100001111011000)))
(assert (= y (fp #b0 #b01100110011 #b0111001101111010100001001101010001111011100110110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
