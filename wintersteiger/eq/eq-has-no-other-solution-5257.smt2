(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3611928076862265246660399498068727552890777587890625p-231 {- 1626667794104593 -231 (-3.94449e-070)}
; Y = -1.363729127651625905315313502796925604343414306640625p-47 {- 1638090363755658 -47 (-9.68988e-015)}
; -1.3611928076862265246660399498068727552890777587890625p-231 = -1.363729127651625905315313502796925604343414306640625p-47 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100011000 #b0101110001110111001000011100000010010000000100010001)))
(assert (= y (fp #b1 #b01111010000 #b0101110100011101010110100010001111011101110010001010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
