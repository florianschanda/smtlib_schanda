(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.63629549257561013320128040504641830921173095703125p-2 {- 2865620143261044 -2 (-0.409074)}
; Y = 1.9919769946438734553595395482261665165424346923828125p-459 {+ 4467467223438253 -459 (1.33819e-138)}
; -1.63629549257561013320128040504641830921173095703125p-2 - 1.9919769946438734553595395482261665165424346923828125p-459 == -1.63629549257561013320128040504641830921173095703125p-2
; [HW: -1.63629549257561013320128040504641830921173095703125p-2] 

; mpf : - 2865620143261044 -2
; mpfd: - 2865620143261044 -2 (-0.409074) class: Neg. norm. non-zero
; hwf : - 2865620143261044 -2 (-0.409074) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111111101 #b1010001011100100010000101110101100110100010101110100)))
(assert (= y (fp #b0 #b01000110100 #b1111110111110010001101000100111001100001001110101101)))
(assert (= r (fp #b1 #b01111111101 #b1010001011100100010000101110101100110100010101110100)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
