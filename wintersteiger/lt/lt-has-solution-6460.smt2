(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7068500421496832775147822758299298584461212158203125p-77 {+ 3183369586432133 -77 (1.1295e-023)}
; Y = 1.01501418781567753768513284740038216114044189453125p-767 {+ 67617890651956 -767 (1.30757e-231)}
; 1.7068500421496832775147822758299298584461212158203125p-77 < 1.01501418781567753768513284740038216114044189453125p-767 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110110010 #b1011010011110100000111111101011000110101100010000101)))
(assert (= y (fp #b0 #b00100000000 #b0000001111010111111110000100010110100100111100110100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
