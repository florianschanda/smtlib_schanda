(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2770615959616413714883265129174105823040008544921875p-68 {- 1247774500331523 -68 (-4.32685e-021)}
; Y = 1.096000071674762654794221816700883209705352783203125p-620 {+ 432345887022002 -620 (2.51891e-187)}
; -1.2770615959616413714883265129174105823040008544921875p-68 < 1.096000071674762654794221816700883209705352783203125p-620 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110111011 #b0100011011101101100000100011110110100010000000000011)))
(assert (= y (fp #b0 #b00110010011 #b0001100010010011011101011111000001000001101110110010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
