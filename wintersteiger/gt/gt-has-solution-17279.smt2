(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3809775529581360675734913456835784018039703369140625p-995 {+ 1715770365538785 -995 (4.12421e-300)}
; Y = -1.4729634281444869969845967716537415981292724609375p-488 {- 2130037918751384 -488 (-1.84312e-147)}
; 1.3809775529581360675734913456835784018039703369140625p-995 > -1.4729634281444869969845967716537415981292724609375p-488 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011100 #b0110000110000111101111101011001001110111000111100001)))
(assert (= y (fp #b1 #b01000010111 #b0111100100010100001000011001100000010101101010011000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
