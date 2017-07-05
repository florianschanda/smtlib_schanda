(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.761048346082068061235759159899316728115081787109375p159 {- 3427457047826134 159 (-1.28689e+048)}
; Y = 1.42927113457525134521119980490766465663909912109375p-992 {+ 1933265321714012 -992 (3.41475e-299)}
; -1.761048346082068061235759159899316728115081787109375p159 = 1.42927113457525134521119980490766465663909912109375p-992 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010011110 #b1100001011010100000100000111110100011000111011010110)))
(assert (= y (fp #b0 #b00000011111 #b0110110111100100101101101000110000011110000101011100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
