(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.355080295542128165919848470366559922695159912109375p-815 {+ 1599139486690134 -815 (6.20181e-246)}
; Y = -1.9979396428984890210500680041150189936161041259765625p452 {- 4494320603895881 452 (-2.32349e+136)}
; 1.355080295542128165919848470366559922695159912109375p-815 > -1.9979396428984890210500680041150189936161041259765625p452 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011010000 #b0101101011100110100010101101000011001110101101010110)))
(assert (= y (fp #b1 #b10111000011 #b1111111101111000111110001111000110100001100001001001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
