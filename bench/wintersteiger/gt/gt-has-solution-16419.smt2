(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.486779414183492686873933052993379533290863037109375p673 {- 2192259588328406 673 (-5.82685e+202)}
; Y = 1.7190831024058559339806606658385135233402252197265625p354 {+ 3238462392043433 354 (6.30834e+106)}
; -1.486779414183492686873933052993379533290863037109375p673 > 1.7190831024058559339806606658385135233402252197265625p354 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010100000 #b0111110010011101100100110110000001001000101111010110)))
(assert (= y (fp #b0 #b10101100001 #b1011100000010101110101001000011111110000011110101001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
