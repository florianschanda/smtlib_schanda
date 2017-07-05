(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7163197608830398355195256954175420105457305908203125p-552 {+ 3226017408190981 -552 (1.16423e-166)}
; Y = -1.7503215290119571445615065385936759412288665771484375p-471 {- 3379147758466311 -471 (-2.87071e-142)}
; 1.7163197608830398355195256954175420105457305908203125p-552 > -1.7503215290119571445615065385936759412288665771484375p-471 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111010111 #b1011011101100000101110110101101001111000101000000101)))
(assert (= y (fp #b1 #b01000101000 #b1100000000010101000100100101110010010111010100000111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
