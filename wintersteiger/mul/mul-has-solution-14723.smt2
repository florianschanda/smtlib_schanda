(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.16793361589743671657970480737276375293731689453125p-190 {- 756305769978676 -190 (-7.4425e-058)}
; Y = 1.99571461407875094806740889907814562320709228515625p129 {+ 4484299964932420 129 (1.35821e+039)}
; -1.16793361589743671657970480737276375293731689453125p-190 * 1.99571461407875094806740889907814562320709228515625p129 == -1.1654310927601765346395268352353014051914215087890625p-60
; [HW: -1.1654310927601765346395268352353014051914215087890625p-60] 

; mpf : - 745035407710225 -60
; mpfd: - 745035407710225 -60 (-1.01085e-018) class: Neg. norm. non-zero
; hwf : - 745035407710225 -60 (-1.01085e-018) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101000001 #b0010101011111101101100101000110000101101101100110100)))
(assert (= y (fp #b0 #b10010000000 #b1111111011100111001001110010011110011110000101000100)))
(assert (= r (fp #b1 #b01111000011 #b0010101001011001101100010010110100100101100000010001)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
