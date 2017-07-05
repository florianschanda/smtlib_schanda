(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2339647451009689849144024265115149319171905517578125p666 {+ 1053683538854557 666 (3.77816e+200)}
; Y = 1.88249841952877883244354961789213120937347412109375p950 {+ 3974419553344860 950 (1.79156e+286)}
; 1.2339647451009689849144024265115149319171905517578125p666 = 1.88249841952877883244354961789213120937347412109375p950 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010011001 #b0011101111100101000111010001000010100000001010011101)))
(assert (= y (fp #b0 #b11110110101 #b1110000111101011011010101001101010100101110101011100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
