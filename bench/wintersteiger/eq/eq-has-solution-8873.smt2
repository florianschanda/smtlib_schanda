(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.33462731712001581030335728428326547145843505859375p-942 {- 1507027460689692 -942 (-3.59008e-284)}
; Y = 1.5216089267065859846894682050333358347415924072265625p-575 {+ 2349117767948905 -575 (1.23043e-173)}
; -1.33462731712001581030335728428326547145843505859375p-942 = 1.5216089267065859846894682050333358347415924072265625p-575 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010001 #b0101010110101010001000101100011101100000111100011100)))
(assert (= y (fp #b0 #b00111000000 #b1000010110001000001010011010000110000001101001101001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
