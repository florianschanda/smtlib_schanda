(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9315025891051644801876818746677599847316741943359375p-161 {- 4195114713188671 -161 (-6.60794e-049)}
; Y = -1.1997462237674298979328568748314864933490753173828125p-23 {- 899577018927661 -23 (-1.43021e-007)}
; -1.9315025891051644801876818746677599847316741943359375p-161 > -1.1997462237674298979328568748314864933490753173828125p-23 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101011110 #b1110111001110110111101000010010001011000100100111111)))
(assert (= y (fp #b1 #b01111101000 #b0011001100100010100100011000101010010100101000101101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
