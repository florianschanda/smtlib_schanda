(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7061228222502240470248580095358192920684814453125p539 {+ 3180094479163912 539 (3.07028e+162)}
; Y = -1.8447728494074058236407154254266060888767242431640625p107 {- 3804518689803905 107 (-2.99332e+032)}
; 1.7061228222502240470248580095358192920684814453125p539 = -1.8447728494074058236407154254266060888767242431640625p107 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000011010 #b1011010011000100011101110001110010000110001000001000)))
(assert (= y (fp #b1 #b10001101010 #b1101100001000011000010001001000011000000111010000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
