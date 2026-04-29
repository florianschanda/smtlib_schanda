(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.88058772829327214282102431752718985080718994140625p-505 {- 3965814565008612 -505 (-1.79534e-152)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.88058772829327214282102431752718985080718994140625p-505 > -oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000000110 #b1110000101101110001100101000011001000111010011100100)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
