(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.313445037200505538521611015312373638153076171875p349 {- 1411630952737328 349 (-1.50619e+105)}
; Y = -zero {- 0 -1023 (-0)}
; -1.313445037200505538521611015312373638153076171875p349 = -zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101011100 #b0101000000111101111011110001011111011110101000110000)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
