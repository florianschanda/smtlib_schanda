(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3465459553428669181585064507089555263519287109375p-202 {+ 1560704235348888 -202 (2.09489e-061)}
; Y = -1.644020439069944661270028518629260361194610595703125p159 {- 2900410209414386 159 (-1.20137e+048)}
; 1.3465459553428669181585064507089555263519287109375p-202 = -1.644020439069944661270028518629260361194610595703125p159 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100110101 #b0101100010110111001111000101100011000010001110011000)))
(assert (= y (fp #b1 #b10010011110 #b1010010011011110100001100000001111000010110011110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
