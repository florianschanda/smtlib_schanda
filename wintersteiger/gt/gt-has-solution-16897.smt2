(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0069460731173711653951841071830131113529205322265625p617 {- 31282332303081 617 (-5.47663e+185)}
; Y = +zero {+ 0 -1023 (0)}
; -1.0069460731173711653951841071830131113529205322265625p617 > +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001101000 #b0000000111000111001101111100010011011111111011101001)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
