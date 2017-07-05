(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7373757371731877174880764869158156216144561767578125p489 {+ 3320845095165213 489 (2.77691e+147)}
; Y = 1.575382090235639243047671698150224983692169189453125p449 {+ 2591290567180882 449 (2.2901e+135)}
; 1.7373757371731877174880764869158156216144561767578125p489 < 1.575382090235639243047671698150224983692169189453125p449 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111101000 #b1011110011000100101010000000010000000101110100011101)))
(assert (= y (fp #b0 #b10111000000 #b1001001101001100001111011001110001000100001001010010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
