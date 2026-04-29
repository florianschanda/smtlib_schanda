(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.671674192322506247165847526048310101032257080078125p360 {+ 3024951642258018 360 (3.926e+108)}
; Y = -1.1403483773870528583671557498746551573276519775390625p-412 {- 632072900102385 -412 (-1.07815e-124)}
; 1.671674192322506247165847526048310101032257080078125p360 < -1.1403483773870528583671557498746551573276519775390625p-412 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101100111 #b1010101111110010110101110000000110010111101001100010)))
(assert (= y (fp #b1 #b01001100011 #b0010001111101101110111110000101011101100100011110001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
