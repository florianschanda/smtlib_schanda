(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9269497084119306951066619149059988558292388916015625p479 {- 4174610361395161 479 (-3.00773e+144)}
; Y = 1.7749532736988615777562472430872730910778045654296875p-878 {+ 3490079274659739 -878 (8.80746e-265)}
; -1.9269497084119306951066619149059988558292388916015625p479 = 1.7749532736988615777562472430872730910778045654296875p-878 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011110 #b1110110101001100100100110111101010101010011111011001)))
(assert (= y (fp #b0 #b00010010001 #b1100011001100011010101100111011001110110111110011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
