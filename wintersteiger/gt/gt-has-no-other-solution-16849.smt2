(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.0782806526067625352283130268915556371212005615234375p-698 {- 352544717910135 -698 (-8.19964e-211)}
; -zero > -1.0782806526067625352283130268915556371212005615234375p-698 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00101000101 #b0001010000001010001100110110101011011011000001110111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
