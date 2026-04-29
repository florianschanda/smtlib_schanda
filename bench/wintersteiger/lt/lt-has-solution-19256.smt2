(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.978739077196774331923734280280768871307373046875p-101 {+ 4407848943356336 -101 (7.80475e-031)}
; Y = -1.56375698531647255862253587110899388790130615234375p-265 {- 2538935748998780 -265 (-2.63767e-080)}
; 1.978739077196774331923734280280768871307373046875p-101 < -1.56375698531647255862253587110899388790130615234375p-265 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110011010 #b1111101010001110101001001110011111100000100110110000)))
(assert (= y (fp #b1 #b01011110110 #b1001000001010010011000001011011011010011011001111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
