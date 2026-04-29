(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.976048735786681387338603599346242845058441162109375p802 {+ 4395732722784342 802 (5.27053e+241)}
; Y = -1.0956214409495352857248917644028551876544952392578125p683 {- 430640685828957 683 (-4.39691e+205)}
; 1.976048735786681387338603599346242845058441162109375p802 < -1.0956214409495352857248917644028551876544952392578125p683 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100100001 #b1111100111011110010101000111011110000001100001010110)))
(assert (= y (fp #b1 #b11010101010 #b0001100001111010101001011001000110101100101101011101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
