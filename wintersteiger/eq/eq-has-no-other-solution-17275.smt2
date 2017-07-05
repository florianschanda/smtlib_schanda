(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.947917923428630349036438929033465683460235595703125p-695 {- 4269042806730994 -695 (-1.18501e-209)}
; Y = 1.813880869777375171025823874515481293201446533203125p-279 {+ 3665393581853362 -279 (1.86741e-084)}
; -1.947917923428630349036438929033465683460235595703125p-695 = 1.813880869777375171025823874515481293201446533203125p-279 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101001000 #b1111001010101010101111111100000001101011000011110010)))
(assert (= y (fp #b0 #b01011101000 #b1101000001011010011111110010011010001000101010110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
