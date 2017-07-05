(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0650458546686663030556019293726421892642974853515625p-19 {+ 292940486847801 -19 (2.03141e-006)}
; Y = -1.68526414484710240770937161869369447231292724609375p345 {- 3086155347383772 345 (-1.20786e+104)}
; 1.0650458546686663030556019293726421892642974853515625p-19 - -1.68526414484710240770937161869369447231292724609375p345 == 1.6852641448471026297539765437250025570392608642578125p345
; [HW: 1.6852641448471026297539765437250025570392608642578125p345] 

; mpf : + 3086155347383773 345
; mpfd: + 3086155347383773 345 (1.20786e+104) class: Pos. norm. non-zero
; hwf : + 3086155347383773 345 (1.20786e+104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111101100 #b0001000010100110110110000101101010001010110100111001)))
(assert (= y (fp #b1 #b10101011000 #b1010111101101101011110001001001100111101010111011100)))
(assert (= r (fp #b0 #b10101011000 #b1010111101101101011110001001001100111101010111011101)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
