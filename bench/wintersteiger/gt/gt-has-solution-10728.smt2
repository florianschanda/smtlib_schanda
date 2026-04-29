(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.68826846374944583573096679174341261386871337890625p-635 {- 3099685596872868 -635 (-1.18412e-191)}
; Y = -1.91158973675164123307013142039068043231964111328125p-292 {- 4105435198749460 -292 (-2.40235e-088)}
; -1.68826846374944583573096679174341261386871337890625p-635 > -1.91158973675164123307013142039068043231964111328125p-292 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110000100 #b1011000000110010010111001010111010101100000010100100)))
(assert (= y (fp #b1 #b01011011011 #b1110100101011101111100011110101010110111101100010100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
