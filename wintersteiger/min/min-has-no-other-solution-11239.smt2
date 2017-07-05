(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7008578146172970146920988554484210908412933349609375p948 {- 3156382992750159 948 (-4.04673e+285)}
; Y = -1.0744096250585446483682972029782831668853759765625p166 {- 335111159686440 166 (-1.00496e+050)}
; -1.7008578146172970146920988554484210908412933349609375p948 m -1.0744096250585446483682972029782831668853759765625p166 == -1.7008578146172970146920988554484210908412933349609375p948
; [HW: -1.7008578146172970146920988554484210908412933349609375p948] 

; mpf : - 3156382992750159 948
; mpfd: - 3156382992750159 948 (-4.04673e+285) class: Neg. norm. non-zero
; hwf : - 3156382992750159 948 (-4.04673e+285) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110110011 #b1011001101101011011010101111000011101101011001001111)))
(assert (= y (fp #b1 #b10010100101 #b0001001100001100100000100101101000100010010100101000)))
(assert (= r (fp #b1 #b11110110011 #b1011001101101011011010101111000011101101011001001111)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
