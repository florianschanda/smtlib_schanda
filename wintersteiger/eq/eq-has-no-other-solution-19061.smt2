(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.56966018303432175429179551429115235805511474609375p-942 {- 2565521388041180 -942 (-4.22231e-284)}
; Y = -1.3853865909517111276727518998086452484130859375p381 {- 1735626907403712 381 (-6.82338e+114)}
; -1.56966018303432175429179551429115235805511474609375p-942 = -1.3853865909517111276727518998086452484130859375p381 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010001 #b1001000111010101001111111110111111110111001111011100)))
(assert (= y (fp #b1 #b10101111100 #b0110001010101000101100100001010001110100010111000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
